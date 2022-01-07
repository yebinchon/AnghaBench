
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum dfl_fpga_devt_type { ____Placeholder_dfl_fpga_devt_type } dfl_fpga_devt_type ;
typedef int dev_t ;
struct TYPE_2__ {int devt; } ;


 int DFL_FPGA_DEVT_MAX ;
 int MAJOR (int ) ;
 int MKDEV (int ,int) ;
 TYPE_1__* dfl_chrdevs ;

__attribute__((used)) static dev_t dfl_get_devt(enum dfl_fpga_devt_type type, int id)
{
 if (type >= DFL_FPGA_DEVT_MAX)
  return 0;

 return MKDEV(MAJOR(dfl_chrdevs[type].devt), id);
}
