
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;







__attribute__((used)) static int mcp320x_channel_to_tx_data(int device_index,
   const unsigned int channel, bool differential)
{
 int start_bit = 1;

 switch (device_index) {
 case 133:
 case 130:
  return ((start_bit << 4) | (!differential << 3) |
       (channel << 2));
 case 132:
 case 129:
 case 131:
 case 128:
  return ((start_bit << 6) | (!differential << 5) |
       (channel << 2));
 default:
  return -EINVAL;
 }
}
