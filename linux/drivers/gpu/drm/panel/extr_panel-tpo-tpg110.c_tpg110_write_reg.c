
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpg110 {int dummy; } ;


 int tpg110_readwrite_reg (struct tpg110*,int,int ,int ) ;

__attribute__((used)) static void tpg110_write_reg(struct tpg110 *tpg, u8 address, u8 outval)
{
 tpg110_readwrite_reg(tpg, 1, address, outval);
}
