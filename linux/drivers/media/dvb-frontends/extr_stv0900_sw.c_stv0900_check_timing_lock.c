
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv0900_internal {int dummy; } ;
typedef int s32 ;
typedef enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;


 int AGC2REF ;
 int CARFREQ ;
 int CFRINIT0 ;
 int CFRINIT1 ;
 int CFR_AUTOSCAN ;
 int DMDISTATE ;
 int FALSE ;
 int RTC ;
 int RTCS2 ;
 int TMGLOCK_QUALITY ;
 int TMGTHFALL ;
 int TMGTHRISE ;
 int TRUE ;
 int msleep (int) ;
 int stv0900_get_bits (struct stv0900_internal*,int ) ;
 int stv0900_read_reg (struct stv0900_internal*,int ) ;
 int stv0900_write_bits (struct stv0900_internal*,int ,int ) ;
 int stv0900_write_reg (struct stv0900_internal*,int ,int) ;

__attribute__((used)) static int stv0900_check_timing_lock(struct stv0900_internal *intp,
    enum fe_stv0900_demod_num demod)
{
 int timingLock = FALSE;
 s32 i,
  timingcpt = 0;
 u8 car_freq,
  tmg_th_high,
  tmg_th_low;

 car_freq = stv0900_read_reg(intp, CARFREQ);
 tmg_th_high = stv0900_read_reg(intp, TMGTHRISE);
 tmg_th_low = stv0900_read_reg(intp, TMGTHFALL);
 stv0900_write_reg(intp, TMGTHRISE, 0x20);
 stv0900_write_reg(intp, TMGTHFALL, 0x0);
 stv0900_write_bits(intp, CFR_AUTOSCAN, 0);
 stv0900_write_reg(intp, RTC, 0x80);
 stv0900_write_reg(intp, RTCS2, 0x40);
 stv0900_write_reg(intp, CARFREQ, 0x0);
 stv0900_write_reg(intp, CFRINIT1, 0x0);
 stv0900_write_reg(intp, CFRINIT0, 0x0);
 stv0900_write_reg(intp, AGC2REF, 0x65);
 stv0900_write_reg(intp, DMDISTATE, 0x18);
 msleep(7);

 for (i = 0; i < 10; i++) {
  if (stv0900_get_bits(intp, TMGLOCK_QUALITY) >= 2)
   timingcpt++;

  msleep(1);
 }

 if (timingcpt >= 3)
  timingLock = TRUE;

 stv0900_write_reg(intp, AGC2REF, 0x38);
 stv0900_write_reg(intp, RTC, 0x88);
 stv0900_write_reg(intp, RTCS2, 0x68);
 stv0900_write_reg(intp, CARFREQ, car_freq);
 stv0900_write_reg(intp, TMGTHRISE, tmg_th_high);
 stv0900_write_reg(intp, TMGTHFALL, tmg_th_low);

 return timingLock;
}
