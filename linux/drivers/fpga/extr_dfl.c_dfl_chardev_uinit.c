
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devt; } ;


 int DFL_FPGA_DEVT_MAX ;
 scalar_t__ MAJOR (int ) ;
 scalar_t__ MINORMASK ;
 int MKDEV (int ,int ) ;
 TYPE_1__* dfl_chrdevs ;
 int unregister_chrdev_region (int ,scalar_t__) ;

__attribute__((used)) static void dfl_chardev_uinit(void)
{
 int i;

 for (i = 0; i < DFL_FPGA_DEVT_MAX; i++)
  if (MAJOR(dfl_chrdevs[i].devt)) {
   unregister_chrdev_region(dfl_chrdevs[i].devt,
       MINORMASK + 1);
   dfl_chrdevs[i].devt = MKDEV(0, 0);
  }
}
