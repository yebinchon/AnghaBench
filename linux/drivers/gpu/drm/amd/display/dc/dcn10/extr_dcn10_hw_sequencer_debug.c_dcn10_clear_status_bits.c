
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc {int dummy; } ;


 int dcn10_clear_hubp_underflow (struct dc*) ;
 int dcn10_clear_otpc_underflow (struct dc*) ;

void dcn10_clear_status_bits(struct dc *dc, unsigned int mask)
{






 const unsigned int DC_HW_STATE_MASK_HUBP_UNDERFLOW = 0x1;
 const unsigned int DC_HW_STATE_MASK_OTPC_UNDERFLOW = 0x2;

 if (mask == 0x0)
  mask = 0xFFFFFFFF;

 if (mask & DC_HW_STATE_MASK_HUBP_UNDERFLOW)
  dcn10_clear_hubp_underflow(dc);

 if (mask & DC_HW_STATE_MASK_OTPC_UNDERFLOW)
  dcn10_clear_otpc_underflow(dc);
}
