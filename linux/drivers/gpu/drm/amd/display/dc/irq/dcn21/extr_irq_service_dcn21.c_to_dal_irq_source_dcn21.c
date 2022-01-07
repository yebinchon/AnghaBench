
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct irq_service {int dummy; } ;
typedef enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;
 int DC_IRQ_SOURCE_HPD1 ;
 int DC_IRQ_SOURCE_HPD1RX ;
 int DC_IRQ_SOURCE_HPD2 ;
 int DC_IRQ_SOURCE_HPD2RX ;
 int DC_IRQ_SOURCE_HPD3 ;
 int DC_IRQ_SOURCE_HPD3RX ;
 int DC_IRQ_SOURCE_HPD4 ;
 int DC_IRQ_SOURCE_HPD4RX ;
 int DC_IRQ_SOURCE_HPD5 ;
 int DC_IRQ_SOURCE_HPD5RX ;
 int DC_IRQ_SOURCE_HPD6 ;
 int DC_IRQ_SOURCE_HPD6RX ;
 int DC_IRQ_SOURCE_INVALID ;
 int DC_IRQ_SOURCE_PFLIP1 ;
 int DC_IRQ_SOURCE_PFLIP2 ;
 int DC_IRQ_SOURCE_PFLIP3 ;
 int DC_IRQ_SOURCE_PFLIP4 ;
 int DC_IRQ_SOURCE_PFLIP5 ;
 int DC_IRQ_SOURCE_PFLIP6 ;
 int DC_IRQ_SOURCE_VBLANK1 ;
 int DC_IRQ_SOURCE_VBLANK2 ;
 int DC_IRQ_SOURCE_VBLANK3 ;
 int DC_IRQ_SOURCE_VBLANK4 ;
 int DC_IRQ_SOURCE_VBLANK5 ;
 int DC_IRQ_SOURCE_VBLANK6 ;
 int DC_IRQ_SOURCE_VUPDATE1 ;
 int DC_IRQ_SOURCE_VUPDATE2 ;
 int DC_IRQ_SOURCE_VUPDATE3 ;
 int DC_IRQ_SOURCE_VUPDATE4 ;
 int DC_IRQ_SOURCE_VUPDATE5 ;
 int DC_IRQ_SOURCE_VUPDATE6 ;

enum dc_irq_source to_dal_irq_source_dcn21(
  struct irq_service *irq_service,
  uint32_t src_id,
  uint32_t ext_id)
{
 switch (src_id) {
 case 146:
  return DC_IRQ_SOURCE_VBLANK1;
 case 145:
  return DC_IRQ_SOURCE_VBLANK2;
 case 144:
  return DC_IRQ_SOURCE_VBLANK3;
 case 143:
  return DC_IRQ_SOURCE_VBLANK4;
 case 142:
  return DC_IRQ_SOURCE_VBLANK5;
 case 141:
  return DC_IRQ_SOURCE_VBLANK6;
 case 139:
  return DC_IRQ_SOURCE_PFLIP1;
 case 138:
  return DC_IRQ_SOURCE_PFLIP2;
 case 137:
  return DC_IRQ_SOURCE_PFLIP3;
 case 136:
  return DC_IRQ_SOURCE_PFLIP4;
 case 135:
  return DC_IRQ_SOURCE_PFLIP5;
 case 134:
  return DC_IRQ_SOURCE_PFLIP6;
 case 133:
  return DC_IRQ_SOURCE_VUPDATE1;
 case 132:
  return DC_IRQ_SOURCE_VUPDATE2;
 case 131:
  return DC_IRQ_SOURCE_VUPDATE3;
 case 130:
  return DC_IRQ_SOURCE_VUPDATE4;
 case 129:
  return DC_IRQ_SOURCE_VUPDATE5;
 case 128:
  return DC_IRQ_SOURCE_VUPDATE6;

 case 140:

  switch (ext_id) {
  case 158:
   return DC_IRQ_SOURCE_HPD1;
  case 156:
   return DC_IRQ_SOURCE_HPD2;
  case 154:
   return DC_IRQ_SOURCE_HPD3;
  case 152:
   return DC_IRQ_SOURCE_HPD4;
  case 150:
   return DC_IRQ_SOURCE_HPD5;
  case 148:
   return DC_IRQ_SOURCE_HPD6;
  case 157:
   return DC_IRQ_SOURCE_HPD1RX;
  case 155:
   return DC_IRQ_SOURCE_HPD2RX;
  case 153:
   return DC_IRQ_SOURCE_HPD3RX;
  case 151:
   return DC_IRQ_SOURCE_HPD4RX;
  case 149:
   return DC_IRQ_SOURCE_HPD5RX;
  case 147:
   return DC_IRQ_SOURCE_HPD6RX;
  default:
   return DC_IRQ_SOURCE_INVALID;
  }
  break;

 default:
  break;
 }
 return DC_IRQ_SOURCE_INVALID;
}
