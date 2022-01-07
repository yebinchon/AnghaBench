
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dib9000_state {int dummy; } ;


 int dib9000_write16_attr (struct dib9000_state*,int,int*,int,int) ;

__attribute__((used)) static inline int dib9000_write_word_attr(struct dib9000_state *state, u16 reg, u16 val, u16 attribute)
{
 u8 b[2] = { val >> 8, val & 0xff };
 return dib9000_write16_attr(state, reg, b, 2, attribute);
}
