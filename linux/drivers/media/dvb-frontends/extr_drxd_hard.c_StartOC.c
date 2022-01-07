
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxd_state {int m_EcOcRegOcModeLop; int m_EcOcRegSncSncLvl; } ;


 int EC_OC_REG_COMM_EXEC_CTL_ACTIVE ;
 int EC_OC_REG_COMM_EXEC_CTL_HOLD ;
 int EC_OC_REG_COMM_EXEC__A ;
 int EC_OC_REG_OCR_MPG_UOS_INIT ;
 int EC_OC_REG_OCR_MPG_UOS__A ;
 int EC_OC_REG_OC_MODE_LOP__A ;
 int EC_OC_REG_SNC_ISC_LVL__A ;
 int Write16 (struct drxd_state*,int ,int ,int ) ;

__attribute__((used)) static int StartOC(struct drxd_state *state)
{
 int status = 0;

 do {

  status = Write16(state, EC_OC_REG_COMM_EXEC__A, EC_OC_REG_COMM_EXEC_CTL_HOLD, 0);
  if (status < 0)
   break;


  status = Write16(state, EC_OC_REG_SNC_ISC_LVL__A, state->m_EcOcRegSncSncLvl, 0);
  if (status < 0)
   break;
  status = Write16(state, EC_OC_REG_OC_MODE_LOP__A, state->m_EcOcRegOcModeLop, 0);
  if (status < 0)
   break;


  status = Write16(state, EC_OC_REG_OCR_MPG_UOS__A, EC_OC_REG_OCR_MPG_UOS_INIT, 0);
  if (status < 0)
   break;


  status = Write16(state, EC_OC_REG_COMM_EXEC__A, EC_OC_REG_COMM_EXEC_CTL_ACTIVE, 0);
  if (status < 0)
   break;
 } while (0);
 return status;
}
