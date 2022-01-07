
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct extcon_dev {int state; TYPE_1__ dev; int lock; int nh_all; int * nh; } ;
typedef int state_buf ;
typedef int name_buf ;


 int BIT (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int KOBJ_CHANGE ;
 int dev_err (TYPE_1__*,char*) ;
 int find_cable_index_by_id (struct extcon_dev*,unsigned int) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int kobject_uevent (int *,int ) ;
 int kobject_uevent_env (int *,int ,char**) ;
 int name_show (TYPE_1__*,int *,char*) ;
 int raw_notifier_call_chain (int *,int,struct extcon_dev*) ;
 int snprintf (char*,int,char*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int state_show (TYPE_1__*,int *,char*) ;

int extcon_sync(struct extcon_dev *edev, unsigned int id)
{
 char name_buf[120];
 char state_buf[120];
 char *prop_buf;
 char *envp[3];
 int env_offset = 0;
 int length;
 int index;
 int state;
 unsigned long flags;

 if (!edev)
  return -EINVAL;

 index = find_cable_index_by_id(edev, id);
 if (index < 0)
  return index;

 spin_lock_irqsave(&edev->lock, flags);
 state = !!(edev->state & BIT(index));
 spin_unlock_irqrestore(&edev->lock, flags);





 raw_notifier_call_chain(&edev->nh[index], state, edev);





 raw_notifier_call_chain(&edev->nh_all, state, edev);

 spin_lock_irqsave(&edev->lock, flags);

 prop_buf = (char *)get_zeroed_page(GFP_ATOMIC);
 if (!prop_buf) {

  spin_unlock_irqrestore(&edev->lock, flags);

  dev_err(&edev->dev, "out of memory in extcon_set_state\n");
  kobject_uevent(&edev->dev.kobj, KOBJ_CHANGE);

  return -ENOMEM;
 }

 length = name_show(&edev->dev, ((void*)0), prop_buf);
 if (length > 0) {
  if (prop_buf[length - 1] == '\n')
   prop_buf[length - 1] = 0;
  snprintf(name_buf, sizeof(name_buf), "NAME=%s", prop_buf);
  envp[env_offset++] = name_buf;
 }

 length = state_show(&edev->dev, ((void*)0), prop_buf);
 if (length > 0) {
  if (prop_buf[length - 1] == '\n')
   prop_buf[length - 1] = 0;
  snprintf(state_buf, sizeof(state_buf), "STATE=%s", prop_buf);
  envp[env_offset++] = state_buf;
 }
 envp[env_offset] = ((void*)0);


 spin_unlock_irqrestore(&edev->lock, flags);
 kobject_uevent_env(&edev->dev.kobj, KOBJ_CHANGE, envp);
 free_page((unsigned long)prop_buf);

 return 0;
}
