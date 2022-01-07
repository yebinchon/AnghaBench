
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct cs_section_def {scalar_t__ id; struct cs_extent_def* section; } ;
struct cs_extent_def {int* extent; int reg_count; int reg_index; } ;
struct TYPE_7__ {TYPE_2__** rb_config; } ;
struct TYPE_5__ {struct cs_section_def* cs_data; } ;
struct TYPE_8__ {TYPE_3__ config; TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_4__ gfx; } ;
struct TYPE_6__ {int raster_config; } ;


 int PACKET3 (int ,int) ;
 int PACKET3_CLEAR_STATE ;
 int PACKET3_CONTEXT_CONTROL ;
 int PACKET3_PREAMBLE_BEGIN_CLEAR_STATE ;
 int PACKET3_PREAMBLE_CNTL ;
 int PACKET3_PREAMBLE_END_CLEAR_STATE ;
 int PACKET3_SET_CONTEXT_REG ;
 int PACKET3_SET_CONTEXT_REG_START ;
 scalar_t__ SECT_CONTEXT ;
 size_t cpu_to_le32 (int) ;
 int mmPA_SC_RASTER_CONFIG ;

__attribute__((used)) static void gfx_v6_0_get_csb_buffer(struct amdgpu_device *adev,
        volatile u32 *buffer)
{
 u32 count = 0, i;
 const struct cs_section_def *sect = ((void*)0);
 const struct cs_extent_def *ext = ((void*)0);

 if (adev->gfx.rlc.cs_data == ((void*)0))
  return;
 if (buffer == ((void*)0))
  return;

 buffer[count++] = cpu_to_le32(PACKET3(PACKET3_PREAMBLE_CNTL, 0));
 buffer[count++] = cpu_to_le32(PACKET3_PREAMBLE_BEGIN_CLEAR_STATE);
 buffer[count++] = cpu_to_le32(PACKET3(PACKET3_CONTEXT_CONTROL, 1));
 buffer[count++] = cpu_to_le32(0x80000000);
 buffer[count++] = cpu_to_le32(0x80000000);

 for (sect = adev->gfx.rlc.cs_data; sect->section != ((void*)0); ++sect) {
  for (ext = sect->section; ext->extent != ((void*)0); ++ext) {
   if (sect->id == SECT_CONTEXT) {
    buffer[count++] =
     cpu_to_le32(PACKET3(PACKET3_SET_CONTEXT_REG, ext->reg_count));
    buffer[count++] = cpu_to_le32(ext->reg_index - 0xa000);
    for (i = 0; i < ext->reg_count; i++)
     buffer[count++] = cpu_to_le32(ext->extent[i]);
   } else {
    return;
   }
  }
 }

 buffer[count++] = cpu_to_le32(PACKET3(PACKET3_SET_CONTEXT_REG, 1));
 buffer[count++] = cpu_to_le32(mmPA_SC_RASTER_CONFIG - PACKET3_SET_CONTEXT_REG_START);
 buffer[count++] = cpu_to_le32(adev->gfx.config.rb_config[0][0].raster_config);

 buffer[count++] = cpu_to_le32(PACKET3(PACKET3_PREAMBLE_CNTL, 0));
 buffer[count++] = cpu_to_le32(PACKET3_PREAMBLE_END_CLEAR_STATE);

 buffer[count++] = cpu_to_le32(PACKET3(PACKET3_CLEAR_STATE, 0));
 buffer[count++] = cpu_to_le32(0);
}
