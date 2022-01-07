
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rackmeter {int dma_regs; } ;
struct TYPE_2__ {int dev; } ;
struct macio_dev {TYPE_1__ ofdev; } ;


 int DBDMA_DO_RESET (int ) ;
 int ENODEV ;
 struct rackmeter* dev_get_drvdata (int *) ;
 int rackmeter_stop_cpu_sniffer (struct rackmeter*) ;

__attribute__((used)) static int rackmeter_shutdown(struct macio_dev* mdev)
{
 struct rackmeter *rm = dev_get_drvdata(&mdev->ofdev.dev);

 if (rm == ((void*)0))
  return -ENODEV;


 rackmeter_stop_cpu_sniffer(rm);


 DBDMA_DO_RESET(rm->dma_regs);

 return 0;
}
