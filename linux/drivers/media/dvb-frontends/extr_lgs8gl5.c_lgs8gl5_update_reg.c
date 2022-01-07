
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgs8gl5_state {int dummy; } ;


 int lgs8gl5_read_reg (struct lgs8gl5_state*,int ) ;
 int lgs8gl5_write_reg (struct lgs8gl5_state*,int ,int ) ;

__attribute__((used)) static int
lgs8gl5_update_reg(struct lgs8gl5_state *state, u8 reg, u8 data)
{
 lgs8gl5_read_reg(state, reg);
 lgs8gl5_write_reg(state, reg, data);
 return 0;
}
