
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int minor_features0; unsigned int stream_count; int register_max; int thread_count; int vertex_cache_size; int shader_core_count; int pixel_pipes; int vertex_output_buffer_size; int instruction_count; int num_constants; int varyings_count; int model; int revision; int minor_features1; void* buffer_size; } ;
struct etnaviv_gpu {TYPE_1__ identity; } ;


 int GC1500 ;
 int GC2000 ;
 int GC2100 ;
 int GC2200 ;
 int GC3000 ;
 int GC4000 ;
 int GC5000 ;
 int GC880 ;
 int VIVS_HI_CHIP_SPECS ;
 int VIVS_HI_CHIP_SPECS_2 ;
 int VIVS_HI_CHIP_SPECS_2_BUFFER_SIZE ;
 int VIVS_HI_CHIP_SPECS_2_INSTRUCTION_COUNT ;
 int VIVS_HI_CHIP_SPECS_2_NUM_CONSTANTS ;
 int VIVS_HI_CHIP_SPECS_3 ;
 int VIVS_HI_CHIP_SPECS_3_VARYINGS_COUNT ;
 int VIVS_HI_CHIP_SPECS_4 ;
 int VIVS_HI_CHIP_SPECS_4_STREAM_COUNT ;
 int VIVS_HI_CHIP_SPECS_PIXEL_PIPES ;
 int VIVS_HI_CHIP_SPECS_REGISTER_MAX ;
 int VIVS_HI_CHIP_SPECS_SHADER_CORE_COUNT ;
 int VIVS_HI_CHIP_SPECS_STREAM_COUNT ;
 int VIVS_HI_CHIP_SPECS_THREAD_COUNT ;
 int VIVS_HI_CHIP_SPECS_VERTEX_CACHE_SIZE ;
 int VIVS_HI_CHIP_SPECS_VERTEX_OUTPUT_BUFFER_SIZE ;
 int chipMinorFeatures0_MORE_MINOR_FEATURES ;
 int chipMinorFeatures1_HALTI0 ;
 int chipModel_GC400 ;
 int chipModel_GC500 ;
 int chipModel_GC530 ;
 int chipModel_GC880 ;
 void* etnaviv_field (int ,int ) ;
 scalar_t__ etnaviv_is_model_rev (struct etnaviv_gpu*,int ,int) ;
 int gpu_read (struct etnaviv_gpu*,int ) ;

__attribute__((used)) static void etnaviv_hw_specs(struct etnaviv_gpu *gpu)
{
 if (gpu->identity.minor_features0 &
     chipMinorFeatures0_MORE_MINOR_FEATURES) {
  u32 specs[4];
  unsigned int streams;

  specs[0] = gpu_read(gpu, VIVS_HI_CHIP_SPECS);
  specs[1] = gpu_read(gpu, VIVS_HI_CHIP_SPECS_2);
  specs[2] = gpu_read(gpu, VIVS_HI_CHIP_SPECS_3);
  specs[3] = gpu_read(gpu, VIVS_HI_CHIP_SPECS_4);

  gpu->identity.stream_count = etnaviv_field(specs[0],
     VIVS_HI_CHIP_SPECS_STREAM_COUNT);
  gpu->identity.register_max = etnaviv_field(specs[0],
     VIVS_HI_CHIP_SPECS_REGISTER_MAX);
  gpu->identity.thread_count = etnaviv_field(specs[0],
     VIVS_HI_CHIP_SPECS_THREAD_COUNT);
  gpu->identity.vertex_cache_size = etnaviv_field(specs[0],
     VIVS_HI_CHIP_SPECS_VERTEX_CACHE_SIZE);
  gpu->identity.shader_core_count = etnaviv_field(specs[0],
     VIVS_HI_CHIP_SPECS_SHADER_CORE_COUNT);
  gpu->identity.pixel_pipes = etnaviv_field(specs[0],
     VIVS_HI_CHIP_SPECS_PIXEL_PIPES);
  gpu->identity.vertex_output_buffer_size =
   etnaviv_field(specs[0],
    VIVS_HI_CHIP_SPECS_VERTEX_OUTPUT_BUFFER_SIZE);

  gpu->identity.buffer_size = etnaviv_field(specs[1],
     VIVS_HI_CHIP_SPECS_2_BUFFER_SIZE);
  gpu->identity.instruction_count = etnaviv_field(specs[1],
     VIVS_HI_CHIP_SPECS_2_INSTRUCTION_COUNT);
  gpu->identity.num_constants = etnaviv_field(specs[1],
     VIVS_HI_CHIP_SPECS_2_NUM_CONSTANTS);

  gpu->identity.varyings_count = etnaviv_field(specs[2],
     VIVS_HI_CHIP_SPECS_3_VARYINGS_COUNT);


  streams = etnaviv_field(specs[3],
     VIVS_HI_CHIP_SPECS_4_STREAM_COUNT);
  if (streams)
   gpu->identity.stream_count = streams;
 }


 if (gpu->identity.stream_count == 0) {
  if (gpu->identity.model >= 0x1000)
   gpu->identity.stream_count = 4;
  else
   gpu->identity.stream_count = 1;
 }


 if (gpu->identity.register_max)
  gpu->identity.register_max = 1 << gpu->identity.register_max;
 else if (gpu->identity.model == chipModel_GC400)
  gpu->identity.register_max = 32;
 else
  gpu->identity.register_max = 64;


 if (gpu->identity.thread_count)
  gpu->identity.thread_count = 1 << gpu->identity.thread_count;
 else if (gpu->identity.model == chipModel_GC400)
  gpu->identity.thread_count = 64;
 else if (gpu->identity.model == chipModel_GC500 ||
   gpu->identity.model == chipModel_GC530)
  gpu->identity.thread_count = 128;
 else
  gpu->identity.thread_count = 256;

 if (gpu->identity.vertex_cache_size == 0)
  gpu->identity.vertex_cache_size = 8;

 if (gpu->identity.shader_core_count == 0) {
  if (gpu->identity.model >= 0x1000)
   gpu->identity.shader_core_count = 2;
  else
   gpu->identity.shader_core_count = 1;
 }

 if (gpu->identity.pixel_pipes == 0)
  gpu->identity.pixel_pipes = 1;


 if (gpu->identity.vertex_output_buffer_size) {
  gpu->identity.vertex_output_buffer_size =
   1 << gpu->identity.vertex_output_buffer_size;
 } else if (gpu->identity.model == chipModel_GC400) {
  if (gpu->identity.revision < 0x4000)
   gpu->identity.vertex_output_buffer_size = 512;
  else if (gpu->identity.revision < 0x4200)
   gpu->identity.vertex_output_buffer_size = 256;
  else
   gpu->identity.vertex_output_buffer_size = 128;
 } else {
  gpu->identity.vertex_output_buffer_size = 512;
 }

 switch (gpu->identity.instruction_count) {
 case 0:
  if (etnaviv_is_model_rev(gpu, GC2000, 0x5108) ||
      gpu->identity.model == chipModel_GC880)
   gpu->identity.instruction_count = 512;
  else
   gpu->identity.instruction_count = 256;
  break;

 case 1:
  gpu->identity.instruction_count = 1024;
  break;

 case 2:
  gpu->identity.instruction_count = 2048;
  break;

 default:
  gpu->identity.instruction_count = 256;
  break;
 }

 if (gpu->identity.num_constants == 0)
  gpu->identity.num_constants = 168;

 if (gpu->identity.varyings_count == 0) {
  if (gpu->identity.minor_features1 & chipMinorFeatures1_HALTI0)
   gpu->identity.varyings_count = 12;
  else
   gpu->identity.varyings_count = 8;
 }





 if (etnaviv_is_model_rev(gpu, GC5000, 0x5434) ||
     etnaviv_is_model_rev(gpu, GC4000, 0x5222) ||
     etnaviv_is_model_rev(gpu, GC4000, 0x5245) ||
     etnaviv_is_model_rev(gpu, GC4000, 0x5208) ||
     etnaviv_is_model_rev(gpu, GC3000, 0x5435) ||
     etnaviv_is_model_rev(gpu, GC2200, 0x5244) ||
     etnaviv_is_model_rev(gpu, GC2100, 0x5108) ||
     etnaviv_is_model_rev(gpu, GC2000, 0x5108) ||
     etnaviv_is_model_rev(gpu, GC1500, 0x5246) ||
     etnaviv_is_model_rev(gpu, GC880, 0x5107) ||
     etnaviv_is_model_rev(gpu, GC880, 0x5106))
  gpu->identity.varyings_count -= 1;
}
