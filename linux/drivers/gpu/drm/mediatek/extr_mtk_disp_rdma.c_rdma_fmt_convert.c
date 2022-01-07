
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_disp_rdma {int dummy; } ;
 unsigned int MEM_MODE_INPUT_FORMAT_ARGB8888 ;
 unsigned int MEM_MODE_INPUT_FORMAT_RGB565 ;
 unsigned int MEM_MODE_INPUT_FORMAT_RGB888 ;
 unsigned int MEM_MODE_INPUT_FORMAT_RGBA8888 ;
 unsigned int MEM_MODE_INPUT_FORMAT_UYVY ;
 unsigned int MEM_MODE_INPUT_FORMAT_YUYV ;
 unsigned int MEM_MODE_INPUT_SWAP ;

__attribute__((used)) static unsigned int rdma_fmt_convert(struct mtk_disp_rdma *rdma,
         unsigned int fmt)
{





 switch (fmt) {
 default:
 case 135:
  return MEM_MODE_INPUT_FORMAT_RGB565;
 case 139:
  return MEM_MODE_INPUT_FORMAT_RGB565 | MEM_MODE_INPUT_SWAP;
 case 134:
  return MEM_MODE_INPUT_FORMAT_RGB888;
 case 138:
  return MEM_MODE_INPUT_FORMAT_RGB888 | MEM_MODE_INPUT_SWAP;
 case 132:
 case 133:
  return MEM_MODE_INPUT_FORMAT_ARGB8888;
 case 136:
 case 137:
  return MEM_MODE_INPUT_FORMAT_ARGB8888 | MEM_MODE_INPUT_SWAP;
 case 129:
 case 140:
  return MEM_MODE_INPUT_FORMAT_RGBA8888;
 case 130:
 case 141:
  return MEM_MODE_INPUT_FORMAT_RGBA8888 | MEM_MODE_INPUT_SWAP;
 case 131:
  return MEM_MODE_INPUT_FORMAT_UYVY;
 case 128:
  return MEM_MODE_INPUT_FORMAT_YUYV;
 }
}
