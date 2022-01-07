
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv {int receive_mode; } ;




 int get_bit_error_rate_s (struct stv*,int*,int*) ;
 int get_bit_error_rate_s2 (struct stv*,int*,int*) ;

__attribute__((used)) static int get_bit_error_rate(struct stv *state, u32 *bernumerator,
         u32 *berdenominator)
{
 *bernumerator = 0;
 *berdenominator = 1;

 switch (state->receive_mode) {
 case 129:
  return get_bit_error_rate_s(state,
         bernumerator, berdenominator);
 case 128:
  return get_bit_error_rate_s2(state,
          bernumerator, berdenominator);
 default:
  break;
 }
 return 0;
}
