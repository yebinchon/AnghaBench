
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_dw_hdmi {int* buf_src; int* buf_dst; } ;



__attribute__((used)) static void dw_hdmi_reformat_iec958(struct snd_dw_hdmi *dw,
 size_t offset, size_t bytes)
{
 u32 *src = dw->buf_src + offset;
 u32 *dst = dw->buf_dst + offset;
 u32 *end = dw->buf_src + offset + bytes;

 do {
  u32 b, sample = *src++;

  b = (sample & 8) << (28 - 3);

  sample >>= 4;

  *dst++ = sample | b;
 } while (src < end);
}
