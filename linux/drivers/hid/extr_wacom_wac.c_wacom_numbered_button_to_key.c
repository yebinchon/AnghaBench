
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTN_0 ;
 int BTN_A ;
 int BTN_BASE ;

__attribute__((used)) static int wacom_numbered_button_to_key(int n)
{
 if (n < 10)
  return BTN_0 + n;
 else if (n < 16)
  return BTN_A + (n-10);
 else if (n < 18)
  return BTN_BASE + (n-16);
 else
  return 0;
}
