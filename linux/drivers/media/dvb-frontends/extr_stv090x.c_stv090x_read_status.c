
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stv090x_state {int dummy; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int CAR_LOCK_FIELD ;
 int DMDSTATE ;
 int DSTATUS ;
 int FE_DEBUG ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int HEADER_MODE_FIELD ;
 int LOCKEDVIT_FIELD ;
 int LOCK_DEFINITIF_FIELD ;
 int PDELSTATUS1 ;
 int PKTDELIN_LOCK_FIELD ;
 int STV090x_GETFIELD_Px (int ,int ) ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int TSFIFO_LINEOK_FIELD ;
 int TSSTATUS ;
 int VSTATUSVIT ;
 int dprintk (int ,int,char*) ;

__attribute__((used)) static int stv090x_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 struct stv090x_state *state = fe->demodulator_priv;
 u32 reg, dstatus;
 u8 search_state;

 *status = 0;

 dstatus = STV090x_READ_DEMOD(state, DSTATUS);
 if (STV090x_GETFIELD_Px(dstatus, CAR_LOCK_FIELD))
  *status |= FE_HAS_SIGNAL | FE_HAS_CARRIER;

 reg = STV090x_READ_DEMOD(state, DMDSTATE);
 search_state = STV090x_GETFIELD_Px(reg, HEADER_MODE_FIELD);

 switch (search_state) {
 case 0:
 case 1:
 default:
  dprintk(FE_DEBUG, 1, "Status: Unlocked (Searching ..)");
  break;

 case 2:
  dprintk(FE_DEBUG, 1, "Delivery system: DVB-S2");
  if (STV090x_GETFIELD_Px(dstatus, LOCK_DEFINITIF_FIELD)) {
   reg = STV090x_READ_DEMOD(state, PDELSTATUS1);
   if (STV090x_GETFIELD_Px(reg, PKTDELIN_LOCK_FIELD)) {
    *status |= FE_HAS_VITERBI;
    reg = STV090x_READ_DEMOD(state, TSSTATUS);
    if (STV090x_GETFIELD_Px(reg, TSFIFO_LINEOK_FIELD))
     *status |= FE_HAS_SYNC | FE_HAS_LOCK;
   }
  }
  break;

 case 3:
  dprintk(FE_DEBUG, 1, "Delivery system: DVB-S");
  if (STV090x_GETFIELD_Px(dstatus, LOCK_DEFINITIF_FIELD)) {
   reg = STV090x_READ_DEMOD(state, VSTATUSVIT);
   if (STV090x_GETFIELD_Px(reg, LOCKEDVIT_FIELD)) {
    *status |= FE_HAS_VITERBI;
    reg = STV090x_READ_DEMOD(state, TSSTATUS);
    if (STV090x_GETFIELD_Px(reg, TSFIFO_LINEOK_FIELD))
     *status |= FE_HAS_SYNC | FE_HAS_LOCK;
   }
  }
  break;
 }

 return 0;
}
