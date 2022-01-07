
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int devt; } ;


 int DFL_FPGA_DEVT_MAX ;
 scalar_t__ MINORMASK ;
 int alloc_chrdev_region (int *,int ,scalar_t__,int ) ;
 int dfl_chardev_uinit () ;
 TYPE_1__* dfl_chrdevs ;

__attribute__((used)) static int dfl_chardev_init(void)
{
 int i, ret;

 for (i = 0; i < DFL_FPGA_DEVT_MAX; i++) {
  ret = alloc_chrdev_region(&dfl_chrdevs[i].devt, 0,
       MINORMASK + 1, dfl_chrdevs[i].name);
  if (ret)
   goto exit;
 }

 return 0;

exit:
 dfl_chardev_uinit();
 return ret;
}
