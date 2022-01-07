
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t uint32_t ;
struct TYPE_2__ {size_t const pixel_format; } ;
struct dpu_format {TYPE_1__ base; } ;
typedef size_t ssize_t ;


 size_t ARRAY_SIZE (struct dpu_format*) ;
 int DPU_DEBUG (char*,...) ;
 int DPU_ERROR (char*,...) ;
 int DPU_FORMAT_IS_UBWC (struct dpu_format const*) ;
 int DPU_FORMAT_IS_YUV (struct dpu_format const*) ;

 struct dpu_format* dpu_format_map ;
 struct dpu_format* dpu_format_map_ubwc ;

const struct dpu_format *dpu_get_dpu_format_ext(
  const uint32_t format,
  const uint64_t modifier)
{
 uint32_t i = 0;
 const struct dpu_format *fmt = ((void*)0);
 const struct dpu_format *map = ((void*)0);
 ssize_t map_size = 0;





 DPU_DEBUG("plane format modifier 0x%llX\n", modifier);

 switch (modifier) {
 case 0:
  map = dpu_format_map;
  map_size = ARRAY_SIZE(dpu_format_map);
  break;
 case 128:
  map = dpu_format_map_ubwc;
  map_size = ARRAY_SIZE(dpu_format_map_ubwc);
  DPU_DEBUG("found fmt: %4.4s  DRM_FORMAT_MOD_QCOM_COMPRESSED\n",
    (char *)&format);
  break;
 default:
  DPU_ERROR("unsupported format modifier %llX\n", modifier);
  return ((void*)0);
 }

 for (i = 0; i < map_size; i++) {
  if (format == map[i].base.pixel_format) {
   fmt = &map[i];
   break;
  }
 }

 if (fmt == ((void*)0))
  DPU_ERROR("unsupported fmt: %4.4s modifier 0x%llX\n",
   (char *)&format, modifier);
 else
  DPU_DEBUG("fmt %4.4s mod 0x%llX ubwc %d yuv %d\n",
    (char *)&format, modifier,
    DPU_FORMAT_IS_UBWC(fmt),
    DPU_FORMAT_IS_YUV(fmt));

 return fmt;
}
