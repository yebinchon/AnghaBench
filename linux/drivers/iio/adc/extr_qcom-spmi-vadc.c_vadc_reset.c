
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vadc_priv {int dummy; } ;


 int VADC_ACCESS ;
 int VADC_ACCESS_DATA ;
 int VADC_FOLLOW_WARM_RB ;
 int VADC_PERH_RESET_CTL3 ;
 int vadc_read (struct vadc_priv*,int ,int *) ;
 int vadc_write (struct vadc_priv*,int ,int ) ;

__attribute__((used)) static int vadc_reset(struct vadc_priv *vadc)
{
 u8 data;
 int ret;

 ret = vadc_write(vadc, VADC_ACCESS, VADC_ACCESS_DATA);
 if (ret)
  return ret;

 ret = vadc_read(vadc, VADC_PERH_RESET_CTL3, &data);
 if (ret)
  return ret;

 ret = vadc_write(vadc, VADC_ACCESS, VADC_ACCESS_DATA);
 if (ret)
  return ret;

 data |= VADC_FOLLOW_WARM_RB;

 return vadc_write(vadc, VADC_PERH_RESET_CTL3, data);
}
