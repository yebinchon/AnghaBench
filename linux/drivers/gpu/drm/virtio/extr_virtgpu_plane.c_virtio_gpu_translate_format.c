
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;






 int VIRTIO_GPU_FORMAT_A8R8G8B8_UNORM ;
 int VIRTIO_GPU_FORMAT_B8G8R8A8_UNORM ;
 int VIRTIO_GPU_FORMAT_B8G8R8X8_UNORM ;
 int VIRTIO_GPU_FORMAT_X8R8G8B8_UNORM ;
 int WARN_ON (int) ;

uint32_t virtio_gpu_translate_format(uint32_t drm_fourcc)
{
 uint32_t format;

 switch (drm_fourcc) {
 case 128:
  format = VIRTIO_GPU_FORMAT_B8G8R8X8_UNORM;
  break;
 case 131:
  format = VIRTIO_GPU_FORMAT_B8G8R8A8_UNORM;
  break;
 case 129:
  format = VIRTIO_GPU_FORMAT_X8R8G8B8_UNORM;
  break;
 case 130:
  format = VIRTIO_GPU_FORMAT_A8R8G8B8_UNORM;
  break;
 default:




  format = 0;
  break;
 }
 WARN_ON(format == 0);
 return format;
}
