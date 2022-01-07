
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct ad799x_state {int id; unsigned int config; int client; } ;


 unsigned int AD7997_8_READ_SINGLE ;
 unsigned int AD799X_CHANNEL_SHIFT ;
 unsigned int BIT (unsigned int) ;
 int EINVAL ;
 int i2c_smbus_read_word_swapped (int ,unsigned int) ;

__attribute__((used)) static int ad799x_scan_direct(struct ad799x_state *st, unsigned ch)
{
 u8 cmd;

 switch (st->id) {
 case 135:
 case 131:
 case 128:
  cmd = st->config | (BIT(ch) << AD799X_CHANNEL_SHIFT);
  break;
 case 134:
 case 133:
 case 132:
  cmd = BIT(ch) << AD799X_CHANNEL_SHIFT;
  break;
 case 130:
 case 129:
  cmd = (ch << AD799X_CHANNEL_SHIFT) | AD7997_8_READ_SINGLE;
  break;
 default:
  return -EINVAL;
 }

 return i2c_smbus_read_word_swapped(st->client, cmd);
}
