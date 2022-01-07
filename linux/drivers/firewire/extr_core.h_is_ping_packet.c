
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline bool is_ping_packet(u32 *data)
{
 return (data[0] & 0xc0ffffff) == 0 && ~data[0] == data[1];
}
