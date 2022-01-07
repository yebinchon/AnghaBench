
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRM_DEBUG_DRIVER (char*,unsigned int,unsigned int,unsigned int,int,unsigned int,int) ;

__attribute__((used)) static inline bool __scale_limit_check(unsigned int src, unsigned int dst,
           unsigned int min, unsigned int max)
{
 if ((max && (dst << 16) > src * max) ||
     (min && (dst << 16) < src * min)) {
  DRM_DEBUG_DRIVER("Scale from %d to %d exceeds HW limits (ratio min %d.%05d, max %d.%05d)\n",
    src, dst,
    min >> 16, 100000 * (min & 0xffff) / (1 << 16),
    max >> 16, 100000 * (max & 0xffff) / (1 << 16));
  return 0;
 }
 return 1;
}
