
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline u32 tegra_sor_hdmi_subpack(const u8 *ptr, size_t size)
{
 u32 value = 0;
 size_t i;

 for (i = size; i > 0; i--)
  value = (value << 8) | ptr[i - 1];

 return value;
}
