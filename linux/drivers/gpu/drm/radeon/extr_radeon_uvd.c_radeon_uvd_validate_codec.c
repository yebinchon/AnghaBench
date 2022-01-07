
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_cs_parser {TYPE_1__* rdev; } ;
struct TYPE_2__ {int family; } ;


 int CHIP_PALM ;
 int DRM_ERROR (char*,unsigned int) ;
 int EINVAL ;

__attribute__((used)) static int radeon_uvd_validate_codec(struct radeon_cs_parser *p,
         unsigned stream_type)
{
 switch (stream_type) {
 case 0:
 case 1:

  return 0;

 case 3:
 case 4:

  if (p->rdev->family >= CHIP_PALM)
   return 0;


 default:
  DRM_ERROR("UVD codec not supported by hardware %d!\n",
     stream_type);
  return -EINVAL;
 }
}
