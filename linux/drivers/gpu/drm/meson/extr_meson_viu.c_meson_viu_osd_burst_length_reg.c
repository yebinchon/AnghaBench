
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t meson_viu_osd_burst_length_reg(uint32_t length)
{
 uint32_t val = (((length & 0x80) % 24) / 12);

 return (((val & 0x3) << 10) | (((val & 0x4) >> 2) << 31));
}
