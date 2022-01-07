
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pidff_device {int * pid_id; } ;
struct input_dev {TYPE_1__* ff; } ;
struct TYPE_2__ {struct pidff_device* private; } ;


 int pidff_playback_pid (struct pidff_device*,int ,int) ;

__attribute__((used)) static int pidff_playback(struct input_dev *dev, int effect_id, int value)
{
 struct pidff_device *pidff = dev->ff->private;

 pidff_playback_pid(pidff, pidff->pid_id[effect_id], value);

 return 0;
}
