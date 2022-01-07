
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int output_types; } ;
typedef enum intel_output_type { ____Placeholder_intel_output_type } intel_output_type ;



__attribute__((used)) static inline bool
intel_crtc_has_type(const struct intel_crtc_state *crtc_state,
      enum intel_output_type type)
{
 return crtc_state->output_types & (1 << type);
}
