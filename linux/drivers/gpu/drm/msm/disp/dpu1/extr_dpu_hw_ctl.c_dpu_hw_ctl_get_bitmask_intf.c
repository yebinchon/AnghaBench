
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpu_hw_ctl {int dummy; } ;
typedef enum dpu_intf { ____Placeholder_dpu_intf } dpu_intf ;


 int BIT (int) ;
 int EINVAL ;





__attribute__((used)) static int dpu_hw_ctl_get_bitmask_intf(struct dpu_hw_ctl *ctx,
  u32 *flushbits, enum dpu_intf intf)
{
 switch (intf) {
 case 131:
  *flushbits |= BIT(31);
  break;
 case 130:
  *flushbits |= BIT(30);
  break;
 case 129:
  *flushbits |= BIT(29);
  break;
 case 128:
  *flushbits |= BIT(28);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
