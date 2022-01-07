
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int get_port_type(u32 *sid, int port_index)
{
 int index, shift;

 index = (port_index + 5) / 8;
 shift = 16 - ((port_index + 5) & 7) * 2;
 return (sid[index] >> shift) & 0x03;
}
