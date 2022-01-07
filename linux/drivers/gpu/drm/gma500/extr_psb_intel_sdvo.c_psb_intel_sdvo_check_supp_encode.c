
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_intel_sdvo_encode {int dummy; } ;
struct psb_intel_sdvo {int dummy; } ;
typedef int encode ;


 int BUILD_BUG_ON (int) ;
 int SDVO_CMD_GET_SUPP_ENCODE ;
 int psb_intel_sdvo_get_value (struct psb_intel_sdvo*,int ,struct psb_intel_sdvo_encode*,int) ;

__attribute__((used)) static bool psb_intel_sdvo_check_supp_encode(struct psb_intel_sdvo *psb_intel_sdvo)
{
 struct psb_intel_sdvo_encode encode;

 BUILD_BUG_ON(sizeof(encode) != 2);
 return psb_intel_sdvo_get_value(psb_intel_sdvo,
      SDVO_CMD_GET_SUPP_ENCODE,
      &encode, sizeof(encode));
}
