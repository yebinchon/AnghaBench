
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pl08x_driver_data {int mem_buses; TYPE_1__* vd; TYPE_3__* adev; TYPE_2__* pd; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int memcpy_bus_width; } ;
struct TYPE_4__ {scalar_t__ dualmaster; } ;


 int FTDMAC020_LLI_DST_WIDTH_SHIFT ;
 int FTDMAC020_LLI_SRC_WIDTH_SHIFT ;
 int FTDMAC020_LLI_TC_MSK ;
 int PL080_WIDTH_16BIT ;
 int PL080_WIDTH_32BIT ;
 int PL080_WIDTH_8BIT ;



 int dev_err (int *,char*) ;
 int pl08x_select_bus (int,int ,int ) ;

__attribute__((used)) static u32 pl08x_ftdmac020_memcpy_cctl(struct pl08x_driver_data *pl08x)
{
 u32 cctl = 0;


 switch (pl08x->pd->memcpy_bus_width) {
 default:
  dev_err(&pl08x->adev->dev,
   "illegal bus width for memcpy, set to 8 bits\n");

 case 128:
  cctl |= PL080_WIDTH_8BIT << FTDMAC020_LLI_SRC_WIDTH_SHIFT |
   PL080_WIDTH_8BIT << FTDMAC020_LLI_DST_WIDTH_SHIFT;
  break;
 case 130:
  cctl |= PL080_WIDTH_16BIT << FTDMAC020_LLI_SRC_WIDTH_SHIFT |
   PL080_WIDTH_16BIT << FTDMAC020_LLI_DST_WIDTH_SHIFT;
  break;
 case 129:
  cctl |= PL080_WIDTH_32BIT << FTDMAC020_LLI_SRC_WIDTH_SHIFT |
   PL080_WIDTH_32BIT << FTDMAC020_LLI_DST_WIDTH_SHIFT;
  break;
 }





 cctl |= FTDMAC020_LLI_TC_MSK;





 if (pl08x->vd->dualmaster)
  cctl |= pl08x_select_bus(1,
      pl08x->mem_buses,
      pl08x->mem_buses);

 return cctl;
}
