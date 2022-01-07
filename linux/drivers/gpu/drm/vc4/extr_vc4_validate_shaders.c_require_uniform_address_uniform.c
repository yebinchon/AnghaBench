
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vc4_validated_shader_info {int num_uniform_addr_offsets; int uniforms_size; int* uniform_addr_offsets; } ;


 int GFP_KERNEL ;
 int* krealloc (int*,int,int ) ;

__attribute__((used)) static bool require_uniform_address_uniform(struct vc4_validated_shader_info *validated_shader)
{
 uint32_t o = validated_shader->num_uniform_addr_offsets;
 uint32_t num_uniforms = validated_shader->uniforms_size / 4;

 validated_shader->uniform_addr_offsets =
  krealloc(validated_shader->uniform_addr_offsets,
    (o + 1) *
    sizeof(*validated_shader->uniform_addr_offsets),
    GFP_KERNEL);
 if (!validated_shader->uniform_addr_offsets)
  return 0;

 validated_shader->uniform_addr_offsets[o] = num_uniforms;
 validated_shader->num_uniform_addr_offsets++;

 return 1;
}
