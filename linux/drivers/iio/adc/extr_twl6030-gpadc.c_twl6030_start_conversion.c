
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TWL6030_GPADC_CTRL_P1 ;
 int TWL6030_GPADC_CTRL_P1_SP1 ;
 int twl6030_gpadc_write (int ,int ) ;

__attribute__((used)) static int twl6030_start_conversion(int channel)
{
 return twl6030_gpadc_write(TWL6030_GPADC_CTRL_P1,
     TWL6030_GPADC_CTRL_P1_SP1);
}
