
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_device {int dummy; } ;


 int DCB_OUTPUT_EOL ;
 int DCB_OUTPUT_UNUSED ;
 int ROM32 (int) ;
 int* olddcb_outp (struct drm_device*,int) ;

int
olddcb_outp_foreach(struct drm_device *dev, void *data,
   int (*exec)(struct drm_device *, void *, int idx, u8 *outp))
{
 int ret, idx = -1;
 u8 *outp = ((void*)0);
 while ((outp = olddcb_outp(dev, ++idx))) {
  if (ROM32(outp[0]) == 0x00000000)
   break;
  if (ROM32(outp[0]) == 0xffffffff)
   break;

  if ((outp[0] & 0x0f) == DCB_OUTPUT_UNUSED)
   continue;
  if ((outp[0] & 0x0f) == DCB_OUTPUT_EOL)
   break;

  ret = exec(dev, data, idx, outp);
  if (ret)
   return ret;
 }

 return 0;
}
