
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int channel; int master; } ;
struct stm_source_device {TYPE_3__ output; TYPE_2__* data; int link_lock; int link; int link_entry; } ;
struct stm_device {TYPE_1__* data; int link_lock; int dev; int link_mutex; } ;
struct TYPE_5__ {int (* unlink ) (TYPE_2__*) ;} ;
struct TYPE_4__ {int (* unlink ) (TYPE_1__*,int ,int ) ;} ;


 int EAGAIN ;
 int list_del_init (int *) ;
 int lockdep_assert_held (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct stm_device* srcu_dereference_check (int ,int *,int) ;
 int stm_output_free (struct stm_device*,TYPE_3__*) ;
 int stm_put_device (struct stm_device*) ;
 int stm_source_srcu ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int __stm_source_link_drop(struct stm_source_device *src,
      struct stm_device *stm)
{
 struct stm_device *link;
 int ret = 0;

 lockdep_assert_held(&stm->link_mutex);


 spin_lock(&stm->link_lock);
 spin_lock(&src->link_lock);
 link = srcu_dereference_check(src->link, &stm_source_srcu, 1);






 if (link != stm) {
  ret = -EAGAIN;
  goto unlock;
 }

 stm_output_free(link, &src->output);
 list_del_init(&src->link_entry);
 pm_runtime_mark_last_busy(&link->dev);
 pm_runtime_put_autosuspend(&link->dev);

 stm_put_device(link);
 rcu_assign_pointer(src->link, ((void*)0));

unlock:
 spin_unlock(&src->link_lock);
 spin_unlock(&stm->link_lock);





 if (!ret) {
  if (src->data->unlink)
   src->data->unlink(src->data);

  if (stm->data->unlink)
   stm->data->unlink(stm->data, src->output.master,
       src->output.channel);
 }

 return ret;
}
