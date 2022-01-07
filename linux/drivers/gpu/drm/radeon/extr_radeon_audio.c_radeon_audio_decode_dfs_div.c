
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int radeon_audio_decode_dfs_div(unsigned int div)
{
 if (div >= 8 && div < 64)
  return (div - 8) * 25 + 200;
 else if (div >= 64 && div < 96)
  return (div - 64) * 50 + 1600;
 else if (div >= 96 && div < 128)
  return (div - 96) * 100 + 3200;
 else
  return 0;
}
