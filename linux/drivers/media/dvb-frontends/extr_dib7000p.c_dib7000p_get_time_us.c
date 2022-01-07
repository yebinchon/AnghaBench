
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct dtv_frontend_properties {int guard_interval; int transmission_mode; int modulation; scalar_t__ hierarchy; int code_rate_HP; int code_rate_LP; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;
 int do_div (int,int) ;

__attribute__((used)) static u32 dib7000p_get_time_us(struct dvb_frontend *demod)
{
 struct dtv_frontend_properties *c = &demod->dtv_property_cache;
 u64 time_us, tmp64;
 u32 tmp, denom;
 int guard, rate_num, rate_denum = 1, bits_per_symbol;
 int interleaving = 0, fft_div;

 switch (c->guard_interval) {
 case 135:
  guard = 4;
  break;
 case 134:
  guard = 8;
  break;
 case 137:
  guard = 16;
  break;
 default:
 case 136:
  guard = 32;
  break;
 }

 switch (c->transmission_mode) {
 case 130:
  fft_div = 4;
  break;
 case 129:
  fft_div = 2;
  break;
 default:
 case 128:
  fft_div = 1;
  break;
 }

 switch (c->modulation) {
 case 143:
 case 131:
  bits_per_symbol = 2;
  break;
 case 133:
  bits_per_symbol = 4;
  break;
 default:
 case 132:
  bits_per_symbol = 6;
  break;
 }

 switch ((c->hierarchy == 0 || 1 == 1) ? c->code_rate_HP : c->code_rate_LP) {
 case 142:
  rate_num = 1;
  rate_denum = 2;
  break;
 case 141:
  rate_num = 2;
  rate_denum = 3;
  break;
 case 140:
  rate_num = 3;
  rate_denum = 4;
  break;
 case 139:
  rate_num = 5;
  rate_denum = 6;
  break;
 default:
 case 138:
  rate_num = 7;
  rate_denum = 8;
  break;
 }

 denom = bits_per_symbol * rate_num * fft_div * 384;







 if (!denom)
  return 0;


 time_us = rate_denum * (1008 * 1562500L);
 tmp64 = time_us;
 do_div(tmp64, guard);
 time_us = time_us + tmp64;
 time_us += denom / 2;
 do_div(time_us, denom);

 tmp = 1008 * 96 * interleaving;
 time_us += tmp + tmp / guard;

 return time_us;
}
