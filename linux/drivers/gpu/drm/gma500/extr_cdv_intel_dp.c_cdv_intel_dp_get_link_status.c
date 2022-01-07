
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_encoder {struct cdv_intel_dp* dev_priv; } ;
struct cdv_intel_dp {int link_status; } ;


 int DP_LANE0_1_STATUS ;
 int DP_LINK_STATUS_SIZE ;
 int cdv_intel_dp_aux_native_read_retry (struct gma_encoder*,int ,int ,int ) ;

__attribute__((used)) static bool
cdv_intel_dp_get_link_status(struct gma_encoder *encoder)
{
 struct cdv_intel_dp *intel_dp = encoder->dev_priv;
 return cdv_intel_dp_aux_native_read_retry(encoder,
           DP_LANE0_1_STATUS,
           intel_dp->link_status,
           DP_LINK_STATUS_SIZE);
}
