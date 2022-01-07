
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pl08x_driver_data {int mem_buses; TYPE_3__* vd; TYPE_2__* pd; TYPE_1__* adev; } ;
struct TYPE_6__ {scalar_t__ dualmaster; } ;
struct TYPE_5__ {int memcpy_burst_size; int memcpy_bus_width; scalar_t__ memcpy_prot_cache; scalar_t__ memcpy_prot_buff; } ;
struct TYPE_4__ {int dev; } ;


 int PL080_BSIZE_1 ;
 int PL080_BSIZE_128 ;
 int PL080_BSIZE_16 ;
 int PL080_BSIZE_256 ;
 int PL080_BSIZE_32 ;
 int PL080_BSIZE_4 ;
 int PL080_BSIZE_64 ;
 int PL080_BSIZE_8 ;
 int PL080_CONTROL_DB_SIZE_SHIFT ;
 int PL080_CONTROL_DST_INCR ;
 int PL080_CONTROL_DWIDTH_SHIFT ;
 int PL080_CONTROL_PROT_BUFF ;
 int PL080_CONTROL_PROT_CACHE ;
 int PL080_CONTROL_PROT_SYS ;
 int PL080_CONTROL_SB_SIZE_SHIFT ;
 int PL080_CONTROL_SRC_INCR ;
 int PL080_CONTROL_SWIDTH_SHIFT ;
 int PL080_WIDTH_16BIT ;
 int PL080_WIDTH_32BIT ;
 int PL080_WIDTH_8BIT ;
 int dev_err (int *,char*) ;
 int pl08x_select_bus (int,int ,int ) ;

__attribute__((used)) static u32 pl08x_memcpy_cctl(struct pl08x_driver_data *pl08x)
{
 u32 cctl = 0;


 switch (pl08x->pd->memcpy_burst_size) {
 default:
  dev_err(&pl08x->adev->dev,
   "illegal burst size for memcpy, set to 1\n");

 case 138:
  cctl |= PL080_BSIZE_1 << PL080_CONTROL_SB_SIZE_SHIFT |
   PL080_BSIZE_1 << PL080_CONTROL_DB_SIZE_SHIFT;
  break;
 case 133:
  cctl |= PL080_BSIZE_4 << PL080_CONTROL_SB_SIZE_SHIFT |
   PL080_BSIZE_4 << PL080_CONTROL_DB_SIZE_SHIFT;
  break;
 case 131:
  cctl |= PL080_BSIZE_8 << PL080_CONTROL_SB_SIZE_SHIFT |
   PL080_BSIZE_8 << PL080_CONTROL_DB_SIZE_SHIFT;
  break;
 case 136:
  cctl |= PL080_BSIZE_16 << PL080_CONTROL_SB_SIZE_SHIFT |
   PL080_BSIZE_16 << PL080_CONTROL_DB_SIZE_SHIFT;
  break;
 case 134:
  cctl |= PL080_BSIZE_32 << PL080_CONTROL_SB_SIZE_SHIFT |
   PL080_BSIZE_32 << PL080_CONTROL_DB_SIZE_SHIFT;
  break;
 case 132:
  cctl |= PL080_BSIZE_64 << PL080_CONTROL_SB_SIZE_SHIFT |
   PL080_BSIZE_64 << PL080_CONTROL_DB_SIZE_SHIFT;
  break;
 case 137:
  cctl |= PL080_BSIZE_128 << PL080_CONTROL_SB_SIZE_SHIFT |
   PL080_BSIZE_128 << PL080_CONTROL_DB_SIZE_SHIFT;
  break;
 case 135:
  cctl |= PL080_BSIZE_256 << PL080_CONTROL_SB_SIZE_SHIFT |
   PL080_BSIZE_256 << PL080_CONTROL_DB_SIZE_SHIFT;
  break;
 }

 switch (pl08x->pd->memcpy_bus_width) {
 default:
  dev_err(&pl08x->adev->dev,
   "illegal bus width for memcpy, set to 8 bits\n");

 case 128:
  cctl |= PL080_WIDTH_8BIT << PL080_CONTROL_SWIDTH_SHIFT |
   PL080_WIDTH_8BIT << PL080_CONTROL_DWIDTH_SHIFT;
  break;
 case 130:
  cctl |= PL080_WIDTH_16BIT << PL080_CONTROL_SWIDTH_SHIFT |
   PL080_WIDTH_16BIT << PL080_CONTROL_DWIDTH_SHIFT;
  break;
 case 129:
  cctl |= PL080_WIDTH_32BIT << PL080_CONTROL_SWIDTH_SHIFT |
   PL080_WIDTH_32BIT << PL080_CONTROL_DWIDTH_SHIFT;
  break;
 }


 if (pl08x->pd->memcpy_prot_buff)
  cctl |= PL080_CONTROL_PROT_BUFF;
 if (pl08x->pd->memcpy_prot_cache)
  cctl |= PL080_CONTROL_PROT_CACHE;


 cctl |= PL080_CONTROL_PROT_SYS;


 cctl |= PL080_CONTROL_SRC_INCR | PL080_CONTROL_DST_INCR;

 if (pl08x->vd->dualmaster)
  cctl |= pl08x_select_bus(0,
      pl08x->mem_buses,
      pl08x->mem_buses);

 return cctl;
}
