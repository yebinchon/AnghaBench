
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_rm_hw_iter {int dummy; } ;
struct dpu_rm {int rm_lock; } ;


 int _dpu_rm_get_hw_locked (struct dpu_rm*,struct dpu_rm_hw_iter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

bool dpu_rm_get_hw(struct dpu_rm *rm, struct dpu_rm_hw_iter *i)
{
 bool ret;

 mutex_lock(&rm->rm_lock);
 ret = _dpu_rm_get_hw_locked(rm, i);
 mutex_unlock(&rm->rm_lock);

 return ret;
}
