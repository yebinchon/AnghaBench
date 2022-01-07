
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ipu_image_pixfmt {scalar_t__ fourcc; } ;


 unsigned int ARRAY_SIZE (struct ipu_image_pixfmt*) ;
 struct ipu_image_pixfmt* image_convert_formats ;

__attribute__((used)) static const struct ipu_image_pixfmt *get_format(u32 fourcc)
{
 const struct ipu_image_pixfmt *ret = ((void*)0);
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(image_convert_formats); i++) {
  if (image_convert_formats[i].fourcc == fourcc) {
   ret = &image_convert_formats[i];
   break;
  }
 }

 return ret;
}
