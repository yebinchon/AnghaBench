
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_dp_mst_encoder {int pipe; scalar_t__ connector; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 struct intel_dp_mst_encoder* enc_to_mst (int *) ;

__attribute__((used)) static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
          enum pipe *pipe)
{
 struct intel_dp_mst_encoder *intel_mst = enc_to_mst(&encoder->base);
 *pipe = intel_mst->pipe;
 if (intel_mst->connector)
  return 1;
 return 0;
}
