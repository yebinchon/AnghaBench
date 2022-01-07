
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 unsigned int ALIGN (unsigned int,int) ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 unsigned int max (unsigned int,unsigned int) ;

__attribute__((used)) static int radeon_uvd_cs_msg_decode(uint32_t *msg, unsigned buf_sizes[])
{
 unsigned stream_type = msg[4];
 unsigned width = msg[6];
 unsigned height = msg[7];
 unsigned dpb_size = msg[9];
 unsigned pitch = msg[28];

 unsigned width_in_mb = width / 16;
 unsigned height_in_mb = ALIGN(height / 16, 2);

 unsigned image_size, tmp, min_dpb_size;

 image_size = width * height;
 image_size += image_size / 2;
 image_size = ALIGN(image_size, 1024);

 switch (stream_type) {
 case 0:


  min_dpb_size = image_size * 17;


  min_dpb_size += width_in_mb * height_in_mb * 17 * 192;


  min_dpb_size += width_in_mb * height_in_mb * 32;
  break;

 case 1:


  min_dpb_size = image_size * 3;


  min_dpb_size += width_in_mb * height_in_mb * 128;


  min_dpb_size += width_in_mb * 64;


  min_dpb_size += width_in_mb * 128;


  tmp = max(width_in_mb, height_in_mb);
  min_dpb_size += ALIGN(tmp * 7 * 16, 64);
  break;

 case 3:


  min_dpb_size = image_size * 3;
  break;

 case 4:


  min_dpb_size = image_size * 3;


  min_dpb_size += width_in_mb * height_in_mb * 64;


  min_dpb_size += ALIGN(width_in_mb * height_in_mb * 32, 64);
  break;

 default:
  DRM_ERROR("UVD codec not handled %d!\n", stream_type);
  return -EINVAL;
 }

 if (width > pitch) {
  DRM_ERROR("Invalid UVD decoding target pitch!\n");
  return -EINVAL;
 }

 if (dpb_size < min_dpb_size) {
  DRM_ERROR("Invalid dpb_size in UVD message (%d / %d)!\n",
     dpb_size, min_dpb_size);
  return -EINVAL;
 }

 buf_sizes[0x1] = dpb_size;
 buf_sizes[0x2] = image_size;
 return 0;
}
