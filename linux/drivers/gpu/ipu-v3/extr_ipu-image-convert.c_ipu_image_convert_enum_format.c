
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_image_pixfmt {int fourcc; } ;


 scalar_t__ ARRAY_SIZE (struct ipu_image_pixfmt*) ;
 int EINVAL ;
 struct ipu_image_pixfmt* image_convert_formats ;

int ipu_image_convert_enum_format(int index, u32 *fourcc)
{
 const struct ipu_image_pixfmt *fmt;

 if (index >= (int)ARRAY_SIZE(image_convert_formats))
  return -EINVAL;


 fmt = &image_convert_formats[index];
 *fourcc = fmt->fourcc;
 return 0;
}
