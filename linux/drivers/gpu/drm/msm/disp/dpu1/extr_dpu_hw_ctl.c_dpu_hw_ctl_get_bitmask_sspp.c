
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dpu_hw_ctl {int dummy; } ;
typedef enum dpu_sspp { ____Placeholder_dpu_sspp } dpu_sspp ;


 int BIT (int) ;
__attribute__((used)) static uint32_t dpu_hw_ctl_get_bitmask_sspp(struct dpu_hw_ctl *ctx,
 enum dpu_sspp sspp)
{
 uint32_t flushbits = 0;

 switch (sspp) {
 case 131:
  flushbits = BIT(0);
  break;
 case 130:
  flushbits = BIT(1);
  break;
 case 129:
  flushbits = BIT(2);
  break;
 case 128:
  flushbits = BIT(18);
  break;
 case 135:
  flushbits = BIT(3);
  break;
 case 134:
  flushbits = BIT(4);
  break;
 case 133:
  flushbits = BIT(5);
  break;
 case 132:
  flushbits = BIT(19);
  break;
 case 139:
  flushbits = BIT(11);
  break;
 case 138:
  flushbits = BIT(12);
  break;
 case 137:
  flushbits = BIT(24);
  break;
 case 136:
  flushbits = BIT(25);
  break;
 case 141:
  flushbits = BIT(22);
  break;
 case 140:
  flushbits = BIT(23);
  break;
 default:
  break;
 }

 return flushbits;
}
