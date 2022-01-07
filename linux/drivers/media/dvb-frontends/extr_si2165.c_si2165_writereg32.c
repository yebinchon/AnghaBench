
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct si2165_state {int dummy; } ;


 int si2165_write (struct si2165_state*,int const,int*,int) ;

__attribute__((used)) static int si2165_writereg32(struct si2165_state *state, const u16 reg, u32 val)
{
 u8 buf[4] = {
  val & 0xff,
  (val >> 8) & 0xff,
  (val >> 16) & 0xff,
  (val >> 24) & 0xff
 };
 return si2165_write(state, reg, buf, 4);
}
