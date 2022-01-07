
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct dib9000_state {int dummy; } ;


 int dib9000_read_word_attr (struct dib9000_state*,int,int ) ;

__attribute__((used)) static u8 dib9000_mbx_count(struct dib9000_state *state, u8 risc_id, u16 attr)
{
 if (risc_id == 0)
  return (u8) (dib9000_read_word_attr(state, 1028, attr) >> 10) & 0x1f;
 else
  return (u8) (dib9000_read_word_attr(state, 1044, attr) >> 8) & 0x7f;
}
