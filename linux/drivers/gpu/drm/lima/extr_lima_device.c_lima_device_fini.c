
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_device {int empty_vm; int dlbu_dma; scalar_t__ dlbu_cpu; int dev; } ;


 int LIMA_PAGE_SIZE ;
 int dma_free_wc (int ,int ,scalar_t__,int ) ;
 int lima_clk_fini (struct lima_device*) ;
 int lima_fini_gp_pipe (struct lima_device*) ;
 int lima_fini_ip (struct lima_device*,int) ;
 int lima_fini_pp_pipe (struct lima_device*) ;
 int lima_ip_num ;
 int lima_regulator_fini (struct lima_device*) ;
 int lima_vm_put (int ) ;

void lima_device_fini(struct lima_device *ldev)
{
 int i;

 lima_fini_pp_pipe(ldev);
 lima_fini_gp_pipe(ldev);

 for (i = lima_ip_num - 1; i >= 0; i--)
  lima_fini_ip(ldev, i);

 if (ldev->dlbu_cpu)
  dma_free_wc(ldev->dev, LIMA_PAGE_SIZE,
       ldev->dlbu_cpu, ldev->dlbu_dma);

 lima_vm_put(ldev->empty_vm);

 lima_regulator_fini(ldev);

 lima_clk_fini(ldev);
}
