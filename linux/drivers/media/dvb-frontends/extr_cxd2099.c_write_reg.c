
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cxd {int dummy; } ;


 int write_regm (struct cxd*,int ,int ,int) ;

__attribute__((used)) static int write_reg(struct cxd *ci, u8 reg, u8 val)
{
 return write_regm(ci, reg, val, 0xff);
}
