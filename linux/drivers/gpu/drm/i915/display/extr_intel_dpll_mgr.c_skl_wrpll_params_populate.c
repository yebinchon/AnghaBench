
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct skl_wrpll_params {int central_freq; int pdiv; int kdiv; int qdiv_ratio; int qdiv_mode; int dco_integer; int dco_fraction; } ;


 int MHz (int) ;
 int WARN (int,char*) ;
 int div_u64 (int,int) ;

__attribute__((used)) static void skl_wrpll_params_populate(struct skl_wrpll_params *params,
          u64 afe_clock,
          u64 central_freq,
          u32 p0, u32 p1, u32 p2)
{
 u64 dco_freq;

 switch (central_freq) {
 case 9600000000ULL:
  params->central_freq = 0;
  break;
 case 9000000000ULL:
  params->central_freq = 1;
  break;
 case 8400000000ULL:
  params->central_freq = 3;
 }

 switch (p0) {
 case 1:
  params->pdiv = 0;
  break;
 case 2:
  params->pdiv = 1;
  break;
 case 3:
  params->pdiv = 2;
  break;
 case 7:
  params->pdiv = 4;
  break;
 default:
  WARN(1, "Incorrect PDiv\n");
 }

 switch (p2) {
 case 5:
  params->kdiv = 0;
  break;
 case 2:
  params->kdiv = 1;
  break;
 case 3:
  params->kdiv = 2;
  break;
 case 1:
  params->kdiv = 3;
  break;
 default:
  WARN(1, "Incorrect KDiv\n");
 }

 params->qdiv_ratio = p1;
 params->qdiv_mode = (params->qdiv_ratio == 1) ? 0 : 1;

 dco_freq = p0 * p1 * p2 * afe_clock;





 params->dco_integer = div_u64(dco_freq, 24 * MHz(1));
 params->dco_fraction =
  div_u64((div_u64(dco_freq, 24) -
    params->dco_integer * MHz(1)) * 0x8000, MHz(1));
}
