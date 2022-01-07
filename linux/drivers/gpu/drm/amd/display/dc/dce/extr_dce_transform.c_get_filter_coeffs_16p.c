
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct fixed31_32 {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int const* get_filter_2tap_16p () ;
 int const* get_filter_3tap_16p (struct fixed31_32) ;
 int const* get_filter_4tap_16p (struct fixed31_32) ;

__attribute__((used)) static const uint16_t *get_filter_coeffs_16p(int taps, struct fixed31_32 ratio)
{
 if (taps == 4)
  return get_filter_4tap_16p(ratio);
 else if (taps == 3)
  return get_filter_3tap_16p(ratio);
 else if (taps == 2)
  return get_filter_2tap_16p();
 else if (taps == 1)
  return ((void*)0);
 else {

  BREAK_TO_DEBUGGER();
  return ((void*)0);
 }
}
