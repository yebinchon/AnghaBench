
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned char odd_rank_attrib(unsigned char dra)
{
 return (dra & 0x70) >> 4;
}
