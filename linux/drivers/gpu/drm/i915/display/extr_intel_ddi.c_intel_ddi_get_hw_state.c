
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_encoder {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int ffs (int ) ;
 int intel_ddi_get_encoder_pipes (struct intel_encoder*,int *,int*) ;

bool intel_ddi_get_hw_state(struct intel_encoder *encoder,
       enum pipe *pipe)
{
 u8 pipe_mask;
 bool is_mst;

 intel_ddi_get_encoder_pipes(encoder, &pipe_mask, &is_mst);

 if (is_mst || !pipe_mask)
  return 0;

 *pipe = ffs(pipe_mask) - 1;

 return 1;
}
