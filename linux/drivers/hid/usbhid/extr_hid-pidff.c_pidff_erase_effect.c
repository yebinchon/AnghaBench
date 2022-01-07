
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pidff_device {int* pid_id; int hid; } ;
struct input_dev {TYPE_1__* ff; } ;
struct TYPE_2__ {struct pidff_device* private; } ;


 int hid_dbg (int ,char*,int,int) ;
 int hid_hw_wait (int ) ;
 int pidff_erase_pid (struct pidff_device*,int) ;
 int pidff_playback_pid (struct pidff_device*,int,int ) ;

__attribute__((used)) static int pidff_erase_effect(struct input_dev *dev, int effect_id)
{
 struct pidff_device *pidff = dev->ff->private;
 int pid_id = pidff->pid_id[effect_id];

 hid_dbg(pidff->hid, "starting to erase %d/%d\n",
  effect_id, pidff->pid_id[effect_id]);


 hid_hw_wait(pidff->hid);
 pidff_playback_pid(pidff, pid_id, 0);
 pidff_erase_pid(pidff, pid_id);

 return 0;
}
