
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRM_DEBUG_DRIVER (char*,unsigned int,unsigned int) ;

__attribute__((used)) static inline bool __align_check(unsigned int val, unsigned int align)
{
 if (align && (val & (align - 1))) {
  DRM_DEBUG_DRIVER("Value %d exceeds HW limits (align %d)\n",
     val, align);
  return 0;
 }
 return 1;
}
