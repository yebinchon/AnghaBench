
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;



__attribute__((used)) static inline unsigned int hdmi_infoframe_subpack(const u8 *ptr, size_t size)
{
 unsigned long value = 0;
 size_t i;

 for (i = size; i > 0; i--)
  value = (value << 8) | ptr[i - 1];

 return value;
}
