
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxd_state {int dummy; } ;


 int FT_REG_COMM_EXEC__A ;
 int Write16 (struct drxd_state*,int ,int,int) ;

__attribute__((used)) static int InitFT(struct drxd_state *state)
{




 return Write16(state, FT_REG_COMM_EXEC__A, 0x0001, 0x0000);
}
