
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int EINVAL ;
 int GL_FMT_ARGB1555 ;
 int GL_FMT_ARGB4444 ;
 int GL_FMT_ARGB8888 ;
 int GL_FMT_RGB565 ;
 int GL_FMT_RGB888 ;
 int WARN_ONCE (int,char*,int) ;

__attribute__((used)) static int zx_gl_get_fmt(uint32_t format)
{
 switch (format) {
 case 131:
 case 128:
  return GL_FMT_ARGB8888;
 case 129:
  return GL_FMT_RGB888;
 case 130:
  return GL_FMT_RGB565;
 case 133:
  return GL_FMT_ARGB1555;
 case 132:
  return GL_FMT_ARGB4444;
 default:
  WARN_ONCE(1, "invalid pixel format %d\n", format);
  return -EINVAL;
 }
}
