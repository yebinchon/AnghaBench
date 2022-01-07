
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix_keypad_platform_data {scalar_t__ col_scan_delay_us; } ;


 int __activate_col (struct matrix_keypad_platform_data const*,int,int) ;
 int udelay (scalar_t__) ;

__attribute__((used)) static void activate_col(const struct matrix_keypad_platform_data *pdata,
    int col, bool on)
{
 __activate_col(pdata, col, on);

 if (on && pdata->col_scan_delay_us)
  udelay(pdata->col_scan_delay_us);
}
