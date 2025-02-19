
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_23__ {int ucPostDiv; void* ulClock; } ;
struct TYPE_22__ {int usFbDivFrac; int usFbDiv; } ;
struct TYPE_24__ {int ucPllRefDiv; TYPE_6__ ulClock; int ucPllCntlFlag; int ucPllPostDiv; TYPE_5__ ulFbDiv; } ;
struct TYPE_20__ {int ulComputeClockFlag; void* ulClockFreq; } ;
struct TYPE_21__ {TYPE_3__ ulClock; } ;
struct TYPE_19__ {void* ulClock; int ucPostDiv; } ;
struct TYPE_18__ {int usFbDivFrac; int usFbDiv; } ;
struct TYPE_17__ {int ucCntlFlag; int ucRefDiv; TYPE_1__ ulFbDiv; int ucPostDiv; int ucInputFlag; void* ulClockParams; } ;
struct TYPE_14__ {int usFbDivFrac; int usFbDiv; } ;
struct TYPE_15__ {int ucCntlFlag; int ucRefDiv; TYPE_10__ ulFbDiv; int ucPostDiv; void* ulClockParams; } ;
struct TYPE_26__ {int ucAction; void* ulClock; int usFbDiv; int ucPostDiv; } ;
struct TYPE_25__ {int ucAction; int ucFbDiv; int ucPostDiv; void* ulClock; } ;
union get_clock_dividers {int fb_div; int enable_post_div; int ref_div; int vco_mode; int enable_dithen; int real_clock; TYPE_7__ v6_out; int post_divider; int flags; int post_div; void* frac_fb_div; void* whole_fb_div; TYPE_4__ v6_in; TYPE_2__ v4; TYPE_13__ v5; TYPE_11__ v3; TYPE_9__ v2; TYPE_8__ v1; } ;
typedef int uint32_t ;
typedef int u8 ;
typedef int u32 ;
struct TYPE_16__ {int atom_context; } ;
struct radeon_device {TYPE_12__ mode_info; int family; } ;
struct atom_clock_dividers {int fb_div; int enable_post_div; int ref_div; int vco_mode; int enable_dithen; int real_clock; TYPE_7__ v6_out; int post_divider; int flags; int post_div; void* frac_fb_div; void* whole_fb_div; TYPE_4__ v6_in; TYPE_2__ v4; TYPE_13__ v5; TYPE_11__ v3; TYPE_9__ v2; TYPE_8__ v1; } ;
typedef int args ;


 int ATOM_PLL_CNTL_FLAG_FRACTION_DISABLE ;
 int ATOM_PLL_CNTL_FLAG_MPLL_VCO_MODE ;
 int ATOM_PLL_CNTL_FLAG_PLL_POST_DIV_EN ;
 int ATOM_PLL_INPUT_FLAG_PLL_STROBE_MODE_EN ;
 int CHIP_RV770 ;
 int CHIP_TAHITI ;
 int COMMAND ;
 int COMPUTE_ENGINE_PLL_PARAM ;
 int ComputeMemoryEnginePLL ;
 int EINVAL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int atom_execute_table (int ,int,int *) ;
 int atom_parse_cmd_header (int ,int,int*,int*) ;
 void* cpu_to_le32 (int) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (void*) ;
 int memset (union get_clock_dividers*,int ,int) ;

int radeon_atom_get_clock_dividers(struct radeon_device *rdev,
       u8 clock_type,
       u32 clock,
       bool strobe_mode,
       struct atom_clock_dividers *dividers)
{
 union get_clock_dividers args;
 int index = GetIndexIntoMasterTable(COMMAND, ComputeMemoryEnginePLL);
 u8 frev, crev;

 memset(&args, 0, sizeof(args));
 memset(dividers, 0, sizeof(struct atom_clock_dividers));

 if (!atom_parse_cmd_header(rdev->mode_info.atom_context, index, &frev, &crev))
  return -EINVAL;

 switch (crev) {
 case 1:

  args.v1.ucAction = clock_type;
  args.v1.ulClock = cpu_to_le32(clock);

  atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);

  dividers->post_div = args.v1.ucPostDiv;
  dividers->fb_div = args.v1.ucFbDiv;
  dividers->enable_post_div = 1;
  break;
 case 2:
 case 3:
 case 5:

  if (rdev->family <= CHIP_RV770) {
   args.v2.ucAction = clock_type;
   args.v2.ulClock = cpu_to_le32(clock);

   atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);

   dividers->post_div = args.v2.ucPostDiv;
   dividers->fb_div = le16_to_cpu(args.v2.usFbDiv);
   dividers->ref_div = args.v2.ucAction;
   if (rdev->family == CHIP_RV770) {
    dividers->enable_post_div = (le32_to_cpu(args.v2.ulClock) & (1 << 24)) ?
     1 : 0;
    dividers->vco_mode = (le32_to_cpu(args.v2.ulClock) & (1 << 25)) ? 1 : 0;
   } else
    dividers->enable_post_div = (dividers->fb_div & 1) ? 1 : 0;
  } else {
   if (clock_type == COMPUTE_ENGINE_PLL_PARAM) {
    args.v3.ulClockParams = cpu_to_le32((clock_type << 24) | clock);

    atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);

    dividers->post_div = args.v3.ucPostDiv;
    dividers->enable_post_div = (args.v3.ucCntlFlag &
            ATOM_PLL_CNTL_FLAG_PLL_POST_DIV_EN) ? 1 : 0;
    dividers->enable_dithen = (args.v3.ucCntlFlag &
          ATOM_PLL_CNTL_FLAG_FRACTION_DISABLE) ? 0 : 1;
    dividers->whole_fb_div = le16_to_cpu(args.v3.ulFbDiv.usFbDiv);
    dividers->frac_fb_div = le16_to_cpu(args.v3.ulFbDiv.usFbDivFrac);
    dividers->ref_div = args.v3.ucRefDiv;
    dividers->vco_mode = (args.v3.ucCntlFlag &
            ATOM_PLL_CNTL_FLAG_MPLL_VCO_MODE) ? 1 : 0;
   } else {

    if (rdev->family >= CHIP_TAHITI)
     return -EINVAL;
    args.v5.ulClockParams = cpu_to_le32((clock_type << 24) | clock);
    if (strobe_mode)
     args.v5.ucInputFlag = ATOM_PLL_INPUT_FLAG_PLL_STROBE_MODE_EN;

    atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);

    dividers->post_div = args.v5.ucPostDiv;
    dividers->enable_post_div = (args.v5.ucCntlFlag &
            ATOM_PLL_CNTL_FLAG_PLL_POST_DIV_EN) ? 1 : 0;
    dividers->enable_dithen = (args.v5.ucCntlFlag &
          ATOM_PLL_CNTL_FLAG_FRACTION_DISABLE) ? 0 : 1;
    dividers->whole_fb_div = le16_to_cpu(args.v5.ulFbDiv.usFbDiv);
    dividers->frac_fb_div = le16_to_cpu(args.v5.ulFbDiv.usFbDivFrac);
    dividers->ref_div = args.v5.ucRefDiv;
    dividers->vco_mode = (args.v5.ucCntlFlag &
            ATOM_PLL_CNTL_FLAG_MPLL_VCO_MODE) ? 1 : 0;
   }
  }
  break;
 case 4:

  args.v4.ulClock = cpu_to_le32(clock);

  atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);

  dividers->post_divider = dividers->post_div = args.v4.ucPostDiv;
  dividers->real_clock = le32_to_cpu(args.v4.ulClock);
  break;
 case 6:


  args.v6_in.ulClock.ulComputeClockFlag = clock_type;
  args.v6_in.ulClock.ulClockFreq = cpu_to_le32(clock);

  atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);

  dividers->whole_fb_div = le16_to_cpu(args.v6_out.ulFbDiv.usFbDiv);
  dividers->frac_fb_div = le16_to_cpu(args.v6_out.ulFbDiv.usFbDivFrac);
  dividers->ref_div = args.v6_out.ucPllRefDiv;
  dividers->post_div = args.v6_out.ucPllPostDiv;
  dividers->flags = args.v6_out.ucPllCntlFlag;
  dividers->real_clock = le32_to_cpu(args.v6_out.ulClock.ulClock);
  dividers->post_divider = args.v6_out.ulClock.ucPostDiv;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
