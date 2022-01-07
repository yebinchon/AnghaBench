
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sys_t_policy_node {int clocksync_interval; } ;
struct mutex {int dummy; } ;
struct config_item {TYPE_2__* ci_group; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {TYPE_1__* cg_subsys; } ;
struct TYPE_3__ {struct mutex su_mutex; } ;


 int kstrtouint (char const*,int,unsigned int*) ;
 int msecs_to_jiffies (unsigned int) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 struct sys_t_policy_node* to_pdrv_policy_node (struct config_item*) ;

__attribute__((used)) static ssize_t
sys_t_policy_clocksync_interval_store(struct config_item *item,
          const char *page, size_t count)
{
 struct mutex *mutexp = &item->ci_group->cg_subsys->su_mutex;
 struct sys_t_policy_node *pn = to_pdrv_policy_node(item);
 unsigned int ms;
 int ret;

 mutex_lock(mutexp);
 ret = kstrtouint(page, 10, &ms);
 mutex_unlock(mutexp);

 if (!ret) {
  pn->clocksync_interval = msecs_to_jiffies(ms);
  return count;
 }

 return ret;
}
