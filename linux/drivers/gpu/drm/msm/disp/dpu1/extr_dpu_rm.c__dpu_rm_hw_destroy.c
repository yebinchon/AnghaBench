
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dpu_hw_blk_type { ____Placeholder_dpu_hw_blk_type } dpu_hw_blk_type ;


 int DPU_ERROR (char*,int) ;







 int dpu_hw_ctl_destroy (void*) ;
 int dpu_hw_intf_destroy (void*) ;
 int dpu_hw_lm_destroy (void*) ;
 int dpu_hw_pingpong_destroy (void*) ;

__attribute__((used)) static void _dpu_rm_hw_destroy(enum dpu_hw_blk_type type, void *hw)
{
 switch (type) {
 case 132:
  dpu_hw_lm_destroy(hw);
  break;
 case 134:
  dpu_hw_ctl_destroy(hw);
  break;
 case 130:
  dpu_hw_pingpong_destroy(hw);
  break;
 case 133:
  dpu_hw_intf_destroy(hw);
  break;
 case 129:

 case 128:

 case 131:
 default:
  DPU_ERROR("unsupported block type %d\n", type);
  break;
 }
}
