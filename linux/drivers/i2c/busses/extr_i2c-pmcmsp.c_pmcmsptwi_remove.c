
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ iobase; scalar_t__ irq; } ;


 int IORESOURCE_MEM ;
 scalar_t__ MSP_TWI_INT_MSK_REG_OFFSET ;
 int free_irq (scalar_t__,TYPE_1__*) ;
 int i2c_del_adapter (int *) ;
 int iounmap (scalar_t__) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pmcmsptwi_adapter ;
 TYPE_1__ pmcmsptwi_data ;
 int pmcmsptwi_writel (int ,scalar_t__) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int pmcmsptwi_remove(struct platform_device *pldev)
{
 struct resource *res;

 i2c_del_adapter(&pmcmsptwi_adapter);

 if (pmcmsptwi_data.irq) {
  pmcmsptwi_writel(0,
   pmcmsptwi_data.iobase + MSP_TWI_INT_MSK_REG_OFFSET);
  free_irq(pmcmsptwi_data.irq, &pmcmsptwi_data);
 }

 iounmap(pmcmsptwi_data.iobase);

 res = platform_get_resource(pldev, IORESOURCE_MEM, 0);
 release_mem_region(res->start, resource_size(res));

 return 0;
}
