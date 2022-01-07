
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct nitrox_device* private; } ;
struct TYPE_2__ {int * fw_name; } ;
struct nitrox_device {TYPE_1__ hw; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int firmware_show(struct seq_file *s, void *v)
{
 struct nitrox_device *ndev = s->private;

 seq_printf(s, "Version: %s\n", ndev->hw.fw_name[0]);
 seq_printf(s, "Version: %s\n", ndev->hw.fw_name[1]);
 return 0;
}
