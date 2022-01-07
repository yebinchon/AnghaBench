
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv {int dummy; } ;
struct dvb_frontend {struct stv* demodulator_priv; } ;
typedef enum fe_sec_mini_cmd { ____Placeholder_fe_sec_mini_cmd } fe_sec_mini_cmd ;


 int DISEQC_MODE ;
 int DISTXFIFO ;
 int DIS_PRECHARGE ;
 int SEC_MINI_A ;
 int SET_FIELD (int ,int) ;
 int SET_REG (int ,int) ;
 int wait_dis (struct stv*,int,int) ;

__attribute__((used)) static int send_burst(struct dvb_frontend *fe, enum fe_sec_mini_cmd burst)
{
 struct stv *state = fe->demodulator_priv;
 u8 value;

 if (burst == SEC_MINI_A) {
  SET_FIELD(DISEQC_MODE, 3);
  value = 0x00;
 } else {
  SET_FIELD(DISEQC_MODE, 2);
  value = 0xFF;
 }

 SET_FIELD(DIS_PRECHARGE, 1);
 wait_dis(state, 0x40, 0x00);
 SET_REG(DISTXFIFO, value);
 SET_FIELD(DIS_PRECHARGE, 0);
 wait_dis(state, 0x20, 0x20);

 return 0;
}
