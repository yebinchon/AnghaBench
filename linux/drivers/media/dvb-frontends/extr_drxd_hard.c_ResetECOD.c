
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxd_state {int m_ResetECRAM; scalar_t__ type_A; } ;


 int B_EC_OD_REG_SYNC__A ;
 int EC_OD_REG_COMM_EXEC__A ;
 int EC_OD_REG_SYNC__A ;
 int Write16 (struct drxd_state*,int ,int,int ) ;
 int WriteTable (struct drxd_state*,int ) ;

__attribute__((used)) static int ResetECOD(struct drxd_state *state)
{
 int status = 0;

 if (state->type_A)
  status = Write16(state, EC_OD_REG_SYNC__A, 0x0664, 0);
 else
  status = Write16(state, B_EC_OD_REG_SYNC__A, 0x0664, 0);

 if (!(status < 0))
  status = WriteTable(state, state->m_ResetECRAM);
 if (!(status < 0))
  status = Write16(state, EC_OD_REG_COMM_EXEC__A, 0x0001, 0);
 return status;
}
