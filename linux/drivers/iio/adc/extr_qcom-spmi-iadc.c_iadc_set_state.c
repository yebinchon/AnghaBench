
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iadc_chip {int dummy; } ;


 int IADC_EN_CTL1 ;
 int IADC_EN_CTL1_SET ;
 int iadc_write (struct iadc_chip*,int ,int ) ;

__attribute__((used)) static int iadc_set_state(struct iadc_chip *iadc, bool state)
{
 return iadc_write(iadc, IADC_EN_CTL1, state ? IADC_EN_CTL1_SET : 0);
}
