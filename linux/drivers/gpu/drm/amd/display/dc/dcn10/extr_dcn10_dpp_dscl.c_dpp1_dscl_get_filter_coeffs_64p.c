
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct fixed31_32 {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int const* get_filter_2tap_64p () ;
 int const* get_filter_3tap_64p (struct fixed31_32) ;
 int const* get_filter_4tap_64p (struct fixed31_32) ;
 int const* get_filter_5tap_64p (struct fixed31_32) ;
 int const* get_filter_6tap_64p (struct fixed31_32) ;
 int const* get_filter_7tap_64p (struct fixed31_32) ;
 int const* get_filter_8tap_64p (struct fixed31_32) ;

__attribute__((used)) static const uint16_t *dpp1_dscl_get_filter_coeffs_64p(int taps, struct fixed31_32 ratio)
{
 if (taps == 8)
  return get_filter_8tap_64p(ratio);
 else if (taps == 7)
  return get_filter_7tap_64p(ratio);
 else if (taps == 6)
  return get_filter_6tap_64p(ratio);
 else if (taps == 5)
  return get_filter_5tap_64p(ratio);
 else if (taps == 4)
  return get_filter_4tap_64p(ratio);
 else if (taps == 3)
  return get_filter_3tap_64p(ratio);
 else if (taps == 2)
  return get_filter_2tap_64p();
 else if (taps == 1)
  return ((void*)0);
 else {

  BREAK_TO_DEBUGGER();
  return ((void*)0);
 }
}
