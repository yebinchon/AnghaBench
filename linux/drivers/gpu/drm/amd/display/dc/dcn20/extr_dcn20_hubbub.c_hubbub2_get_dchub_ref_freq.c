
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hubbub {int dummy; } ;
struct dcn20_hubbub {int dummy; } ;


 int ASSERT_CRITICAL (int) ;
 int DCHUBBUB_GLOBAL_TIMER_CNTL ;
 int DCHUBBUB_GLOBAL_TIMER_ENABLE ;
 int DCHUBBUB_GLOBAL_TIMER_REFDIV ;
 int REG_GET_2 (int ,int ,int*,int ,int*) ;
 struct dcn20_hubbub* TO_DCN20_HUBBUB (struct hubbub*) ;

void hubbub2_get_dchub_ref_freq(struct hubbub *hubbub,
  unsigned int dccg_ref_freq_inKhz,
  unsigned int *dchub_ref_freq_inKhz)
{
 struct dcn20_hubbub *hubbub1 = TO_DCN20_HUBBUB(hubbub);
 uint32_t ref_div = 0;
 uint32_t ref_en = 0;

 REG_GET_2(DCHUBBUB_GLOBAL_TIMER_CNTL, DCHUBBUB_GLOBAL_TIMER_REFDIV, &ref_div,
   DCHUBBUB_GLOBAL_TIMER_ENABLE, &ref_en);

 if (ref_en) {
  if (ref_div == 2)
   *dchub_ref_freq_inKhz = dccg_ref_freq_inKhz / 2;
  else
   *dchub_ref_freq_inKhz = dccg_ref_freq_inKhz;



  if (*dchub_ref_freq_inKhz < 40000 || *dchub_ref_freq_inKhz > 60000)
   ASSERT_CRITICAL(0);

  return;
 } else {
  *dchub_ref_freq_inKhz = dccg_ref_freq_inKhz;


  ASSERT_CRITICAL(0);
  return;
 }
}
