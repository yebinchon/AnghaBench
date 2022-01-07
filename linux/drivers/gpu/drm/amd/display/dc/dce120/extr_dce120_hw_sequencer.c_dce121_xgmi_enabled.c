
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_hwseq {int dummy; } ;


 int MC_VM_XGMI_LFB_CNTL ;
 int PF_MAX_REGION ;
 int REG_GET (int ,int ,int *) ;

bool dce121_xgmi_enabled(struct dce_hwseq *hws)
{
 uint32_t pf_max_region;

 REG_GET(MC_VM_XGMI_LFB_CNTL, PF_MAX_REGION, &pf_max_region);

 return !!pf_max_region;
}
