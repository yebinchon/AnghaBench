
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ pixel_format; scalar_t__ hw_format; } ;


 scalar_t__ ADE_FORMAT_UNSUPPORT ;
 int ARRAY_SIZE (TYPE_1__*) ;
 int DRM_ERROR (char*,scalar_t__) ;
 TYPE_1__* ade_formats ;

__attribute__((used)) static u32 ade_get_format(u32 pixel_format)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ade_formats); i++)
  if (ade_formats[i].pixel_format == pixel_format)
   return ade_formats[i].hw_format;


 DRM_ERROR("Not found pixel format!!fourcc_format= %d\n",
    pixel_format);
 return ADE_FORMAT_UNSUPPORT;
}
