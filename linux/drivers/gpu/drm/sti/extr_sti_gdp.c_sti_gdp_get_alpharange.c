
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GAM_GDP_ALPHARANGE_255 ;




__attribute__((used)) static int sti_gdp_get_alpharange(int format)
{
 switch (format) {
 case 129:
 case 128:
 case 130:
  return GAM_GDP_ALPHARANGE_255;
 }
 return 0;
}
