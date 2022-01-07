
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct stv0900_internal {int dummy; } ;
typedef size_t s32 ;
typedef enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;


 int DISTXDATA ;
 int DIS_PRECHARGE ;
 int FIFO_FULL ;
 int TX_IDLE ;
 int msleep (int) ;
 int stv0900_get_bits (struct stv0900_internal*,int ) ;
 int stv0900_write_bits (struct stv0900_internal*,int ,int) ;
 int stv0900_write_reg (struct stv0900_internal*,int ,int ) ;

__attribute__((used)) static int stv0900_diseqc_send(struct stv0900_internal *intp , u8 *data,
    u32 NbData, enum fe_stv0900_demod_num demod)
{
 s32 i = 0;

 stv0900_write_bits(intp, DIS_PRECHARGE, 1);
 while (i < NbData) {
  while (stv0900_get_bits(intp, FIFO_FULL))
   ;
  stv0900_write_reg(intp, DISTXDATA, data[i]);
  i++;
 }

 stv0900_write_bits(intp, DIS_PRECHARGE, 0);
 i = 0;
 while ((stv0900_get_bits(intp, TX_IDLE) != 1) && (i < 10)) {
  msleep(10);
  i++;
 }

 return 0;
}
