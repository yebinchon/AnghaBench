
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct radeon_ib {size_t length_dw; size_t* ptr; } ;
struct radeon_device {int dummy; } ;






 int DRM_ERROR (char*,size_t,size_t) ;
 int EINVAL ;
 size_t GET_DMA_CMD (size_t) ;
 size_t GET_DMA_COUNT (size_t) ;
 size_t GET_DMA_SUB_CMD (size_t) ;

int evergreen_dma_ib_parse(struct radeon_device *rdev, struct radeon_ib *ib)
{
 u32 idx = 0;
 u32 header, cmd, count, sub_cmd;

 do {
  header = ib->ptr[idx];
  cmd = GET_DMA_CMD(header);
  count = GET_DMA_COUNT(header);
  sub_cmd = GET_DMA_SUB_CMD(header);

  switch (cmd) {
  case 128:
   switch (sub_cmd) {

   case 8:
    idx += count + 7;
    break;

   case 0:
    idx += count + 3;
    break;
   default:
    DRM_ERROR("bad DMA_PACKET_WRITE [%6d] 0x%08x sub cmd is not 0 or 8\n", idx, ib->ptr[idx]);
    return -EINVAL;
   }
   break;
  case 130:
   switch (sub_cmd) {

   case 0x00:
    idx += 5;
    break;

   case 0x08:
    idx += 9;
    break;

   case 0x40:
    idx += 5;
    break;

   case 0x41:
    idx += 9;
    break;

   case 0x44:
    idx += 7;
    break;

   case 0x48:
    idx += 10;
    break;

   case 0x49:
    idx += 12;
    break;

   case 0x4b:
    idx += 10;
    break;

   case 0x4c:
    idx += 9;
    break;

   case 0x4d:
    idx += 13;
    break;

   case 0x4f:
    idx += 10;
    break;
   default:
    DRM_ERROR("bad DMA_PACKET_COPY [%6d] 0x%08x invalid sub cmd\n", idx, ib->ptr[idx]);
    return -EINVAL;
   }
   break;
  case 131:
   idx += 4;
   break;
  case 129:
   idx += 1;
   break;
  default:
   DRM_ERROR("Unknown packet type %d at %d !\n", cmd, idx);
   return -EINVAL;
  }
 } while (idx < ib->length_dw);

 return 0;
}
