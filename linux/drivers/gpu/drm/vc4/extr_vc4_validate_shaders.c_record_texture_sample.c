
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vc4_validated_shader_info {int num_texture_samples; struct vc4_texture_sample_info* texture_samples; } ;
struct vc4_texture_sample_info {int dummy; } ;
struct vc4_shader_validation_state {TYPE_1__* tmu_setup; } ;
struct TYPE_2__ {int * p_offset; } ;


 int GFP_KERNEL ;
 struct vc4_texture_sample_info* krealloc (struct vc4_texture_sample_info*,int,int ) ;
 int memcpy (struct vc4_texture_sample_info*,TYPE_1__*,int) ;

__attribute__((used)) static bool
record_texture_sample(struct vc4_validated_shader_info *validated_shader,
        struct vc4_shader_validation_state *validation_state,
        int tmu)
{
 uint32_t s = validated_shader->num_texture_samples;
 int i;
 struct vc4_texture_sample_info *temp_samples;

 temp_samples = krealloc(validated_shader->texture_samples,
    (s + 1) * sizeof(*temp_samples),
    GFP_KERNEL);
 if (!temp_samples)
  return 0;

 memcpy(&temp_samples[s],
        &validation_state->tmu_setup[tmu],
        sizeof(*temp_samples));

 validated_shader->num_texture_samples = s + 1;
 validated_shader->texture_samples = temp_samples;

 for (i = 0; i < 4; i++)
  validation_state->tmu_setup[tmu].p_offset[i] = ~0;

 return 1;
}
