
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct si2165_state {int regmap; } ;


 int regmap_write (int ,int const,int ) ;

__attribute__((used)) static int si2165_writereg8(struct si2165_state *state, const u16 reg, u8 val)
{
 return regmap_write(state->regmap, reg, val);
}
