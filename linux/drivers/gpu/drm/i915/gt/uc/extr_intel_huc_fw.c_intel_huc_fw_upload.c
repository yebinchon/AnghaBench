
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_huc {int fw; } ;


 int HUC_UKERNEL ;
 int huc_to_gt (struct intel_huc*) ;
 int intel_uc_fw_upload (int *,int ,int ,int ) ;

int intel_huc_fw_upload(struct intel_huc *huc)
{

 return intel_uc_fw_upload(&huc->fw, huc_to_gt(huc), 0, HUC_UKERNEL);
}
