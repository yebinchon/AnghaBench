
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv0900_internal {int dummy; } ;


 int TNRLD ;
 int TUN_BW ;
 int TUN_RFFREQ0 ;
 int TUN_RFFREQ1 ;
 int TUN_RFFREQ2 ;
 int stv0900_write_bits (struct stv0900_internal*,int ,int) ;
 int stv0900_write_reg (struct stv0900_internal*,int ,int) ;

void stv0900_set_tuner_auto(struct stv0900_internal *intp, u32 Frequency,
      u32 Bandwidth, int demod)
{
 u32 tunerFrequency;



 tunerFrequency = (Frequency * 64) / 1000;

 stv0900_write_bits(intp, TUN_RFFREQ2, (tunerFrequency >> 10));
 stv0900_write_bits(intp, TUN_RFFREQ1, (tunerFrequency >> 2) & 0xff);
 stv0900_write_bits(intp, TUN_RFFREQ0, (tunerFrequency & 0x03));

 stv0900_write_bits(intp, TUN_BW, Bandwidth / 2000000);

 stv0900_write_reg(intp, TNRLD, 1);
}
