
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_source_device {int link; } ;
struct stm_device {int link_mutex; } ;


 int EAGAIN ;
 int __stm_source_link_drop (struct stm_source_device*,struct stm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct stm_device* srcu_dereference (int ,int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int stm_source_srcu ;

__attribute__((used)) static void stm_source_link_drop(struct stm_source_device *src)
{
 struct stm_device *stm;
 int idx, ret;

retry:
 idx = srcu_read_lock(&stm_source_srcu);





 stm = srcu_dereference(src->link, &stm_source_srcu);

 ret = 0;
 if (stm) {
  mutex_lock(&stm->link_mutex);
  ret = __stm_source_link_drop(src, stm);
  mutex_unlock(&stm->link_mutex);
 }

 srcu_read_unlock(&stm_source_srcu, idx);


 if (ret == -EAGAIN)
  goto retry;
}
