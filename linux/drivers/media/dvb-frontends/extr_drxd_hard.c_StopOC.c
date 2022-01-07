
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drxd_state {int m_EcOcRegOcModeLop; int m_EcOcRegSncSncLvl; } ;


 int EC_OC_REG_COMM_EXEC_CTL_ACTIVE ;
 int EC_OC_REG_COMM_EXEC_CTL_HOLD ;
 int EC_OC_REG_COMM_EXEC__A ;
 int EC_OC_REG_COMM_INT_STA__A ;
 int EC_OC_REG_DTO_INC_HIP__A ;
 int EC_OC_REG_DTO_INC_LOP__A ;
 int EC_OC_REG_OCR_MPG_UOS__A ;
 int EC_OC_REG_OCR_MPG_UOS__M ;
 int EC_OC_REG_OC_MODE_LOP_DTO_CTR_SRC_STATIC ;
 int EC_OC_REG_OC_MODE_LOP_DTO_CTR_SRC__M ;
 int EC_OC_REG_OC_MODE_LOP_PAR_ENA_ENABLE ;
 int EC_OC_REG_OC_MODE_LOP_PAR_ENA__M ;
 int EC_OC_REG_OC_MODE_LOP__A ;
 int EC_OC_REG_RCN_MAP_HIP__A ;
 int EC_OC_REG_RCN_MAP_LOP__A ;
 int EC_OC_REG_SNC_ISC_LVL_OSC__M ;
 int EC_OC_REG_SNC_ISC_LVL__A ;
 int Read16 (struct drxd_state*,int ,int*,int ) ;
 int Write16 (struct drxd_state*,int ,int,int ) ;
 int msleep (int) ;

__attribute__((used)) static int StopOC(struct drxd_state *state)
{
 int status = 0;
 u16 ocSyncLvl = 0;
 u16 ocModeLop = state->m_EcOcRegOcModeLop;
 u16 dtoIncLop = 0;
 u16 dtoIncHip = 0;

 do {

  status = Read16(state, EC_OC_REG_SNC_ISC_LVL__A, &ocSyncLvl, 0);
  if (status < 0)
   break;

  state->m_EcOcRegSncSncLvl = ocSyncLvl;



  status = Read16(state, EC_OC_REG_RCN_MAP_LOP__A, &dtoIncLop, 0);
  if (status < 0)
   break;
  status = Read16(state, EC_OC_REG_RCN_MAP_HIP__A, &dtoIncHip, 0);
  if (status < 0)
   break;
  status = Write16(state, EC_OC_REG_DTO_INC_LOP__A, dtoIncLop, 0);
  if (status < 0)
   break;
  status = Write16(state, EC_OC_REG_DTO_INC_HIP__A, dtoIncHip, 0);
  if (status < 0)
   break;
  ocModeLop &= ~(EC_OC_REG_OC_MODE_LOP_DTO_CTR_SRC__M);
  ocModeLop |= EC_OC_REG_OC_MODE_LOP_DTO_CTR_SRC_STATIC;
  status = Write16(state, EC_OC_REG_OC_MODE_LOP__A, ocModeLop, 0);
  if (status < 0)
   break;
  status = Write16(state, EC_OC_REG_COMM_EXEC__A, EC_OC_REG_COMM_EXEC_CTL_HOLD, 0);
  if (status < 0)
   break;

  msleep(1);

  status = Write16(state, EC_OC_REG_OCR_MPG_UOS__A, EC_OC_REG_OCR_MPG_UOS__M, 0);
  if (status < 0)
   break;


  ocSyncLvl &= ~(EC_OC_REG_SNC_ISC_LVL_OSC__M);
  status = Write16(state, EC_OC_REG_SNC_ISC_LVL__A, ocSyncLvl, 0);
  if (status < 0)
   break;
  ocModeLop &= ~(EC_OC_REG_OC_MODE_LOP_PAR_ENA__M);
  ocModeLop |= EC_OC_REG_OC_MODE_LOP_PAR_ENA_ENABLE;
  ocModeLop |= 0x2;
  status = Write16(state, EC_OC_REG_OC_MODE_LOP__A, ocModeLop, 0);
  if (status < 0)
   break;
  status = Write16(state, EC_OC_REG_COMM_INT_STA__A, 0x0, 0);
  if (status < 0)
   break;
  status = Write16(state, EC_OC_REG_COMM_EXEC__A, EC_OC_REG_COMM_EXEC_CTL_ACTIVE, 0);
  if (status < 0)
   break;
 } while (0);

 return status;
}
