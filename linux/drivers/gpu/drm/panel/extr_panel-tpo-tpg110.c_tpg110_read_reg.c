
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpg110 {int dummy; } ;


 int tpg110_readwrite_reg (struct tpg110*,int,int ,int ) ;

__attribute__((used)) static u8 tpg110_read_reg(struct tpg110 *tpg, u8 address)
{
 return tpg110_readwrite_reg(tpg, 0, address, 0);
}
