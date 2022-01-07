
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cxd {int dummy; } ;


 int read_block (struct cxd*,int ,int *,int) ;

__attribute__((used)) static int read_reg(struct cxd *ci, u8 reg, u8 *val)
{
 return read_block(ci, reg, val, 1);
}
