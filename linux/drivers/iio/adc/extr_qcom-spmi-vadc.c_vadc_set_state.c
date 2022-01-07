
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vadc_priv {int dummy; } ;


 int VADC_EN_CTL1 ;
 int VADC_EN_CTL1_SET ;
 int vadc_write (struct vadc_priv*,int ,int ) ;

__attribute__((used)) static int vadc_set_state(struct vadc_priv *vadc, bool state)
{
 return vadc_write(vadc, VADC_EN_CTL1, state ? VADC_EN_CTL1_SET : 0);
}
