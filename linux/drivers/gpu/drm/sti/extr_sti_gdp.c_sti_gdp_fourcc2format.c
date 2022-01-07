
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDP_ABGR8888 ;
 int GDP_ARGB1555 ;
 int GDP_ARGB4444 ;
 int GDP_ARGB8888 ;
 int GDP_RGB565 ;
 int GDP_RGB888 ;
 int GDP_RGB888_32 ;
 int GDP_XBGR8888 ;

__attribute__((used)) static int sti_gdp_fourcc2format(int fourcc)
{
 switch (fourcc) {
 case 128:
  return GDP_RGB888_32;
 case 129:
  return GDP_XBGR8888;
 case 132:
  return GDP_ARGB8888;
 case 135:
  return GDP_ABGR8888;
 case 133:
  return GDP_ARGB4444;
 case 134:
  return GDP_ARGB1555;
 case 131:
  return GDP_RGB565;
 case 130:
  return GDP_RGB888;
 }
 return -1;
}
