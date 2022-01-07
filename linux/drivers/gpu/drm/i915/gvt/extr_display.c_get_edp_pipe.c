
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_vgpu {int dummy; } ;


 int PIPE_A ;
 int PIPE_B ;
 int PIPE_C ;




 int TRANS_DDI_EDP_INPUT_MASK ;
 int _TRANS_DDI_FUNC_CTL_EDP ;
 int vgpu_vreg (struct intel_vgpu*,int ) ;

__attribute__((used)) static int get_edp_pipe(struct intel_vgpu *vgpu)
{
 u32 data = vgpu_vreg(vgpu, _TRANS_DDI_FUNC_CTL_EDP);
 int pipe = -1;

 switch (data & TRANS_DDI_EDP_INPUT_MASK) {
 case 131:
 case 130:
  pipe = PIPE_A;
  break;
 case 129:
  pipe = PIPE_B;
  break;
 case 128:
  pipe = PIPE_C;
  break;
 }
 return pipe;
}
