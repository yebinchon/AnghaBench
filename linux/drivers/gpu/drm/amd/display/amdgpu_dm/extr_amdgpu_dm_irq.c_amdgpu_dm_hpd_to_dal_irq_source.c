
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;
 int DC_IRQ_SOURCE_HPD1 ;
 int DC_IRQ_SOURCE_HPD2 ;
 int DC_IRQ_SOURCE_HPD3 ;
 int DC_IRQ_SOURCE_HPD4 ;
 int DC_IRQ_SOURCE_HPD5 ;
 int DC_IRQ_SOURCE_HPD6 ;
 int DC_IRQ_SOURCE_INVALID ;

__attribute__((used)) static enum dc_irq_source amdgpu_dm_hpd_to_dal_irq_source(unsigned type)
{
 switch (type) {
 case 133:
  return DC_IRQ_SOURCE_HPD1;
 case 132:
  return DC_IRQ_SOURCE_HPD2;
 case 131:
  return DC_IRQ_SOURCE_HPD3;
 case 130:
  return DC_IRQ_SOURCE_HPD4;
 case 129:
  return DC_IRQ_SOURCE_HPD5;
 case 128:
  return DC_IRQ_SOURCE_HPD6;
 default:
  return DC_IRQ_SOURCE_INVALID;
 }
}
