
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static unsigned char analogix_dp_get_lane_status(u8 link_status[2], int lane)
{
 int shift = (lane & 1) * 4;
 u8 link_value = link_status[lane >> 1];

 return (link_value >> shift) & 0xf;
}
