
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_phys {size_t intf_idx; } ;
struct dpu_encoder_hw_resources {int * intfs; } ;


 size_t INTF_0 ;
 int INTF_MODE_CMD ;

__attribute__((used)) static void dpu_encoder_phys_cmd_get_hw_resources(
  struct dpu_encoder_phys *phys_enc,
  struct dpu_encoder_hw_resources *hw_res)
{
 hw_res->intfs[phys_enc->intf_idx - INTF_0] = INTF_MODE_CMD;
}
