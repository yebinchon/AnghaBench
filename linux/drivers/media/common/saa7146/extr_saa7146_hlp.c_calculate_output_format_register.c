
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7146_dev {int dummy; } ;



__attribute__((used)) static void calculate_output_format_register(struct saa7146_dev* saa, u32 palette, u32* clip_format)
{

 *clip_format &= 0x0000ffff;

 *clip_format |= (( ((palette&0xf00)>>8) << 30) | ((palette&0x00f) << 24) | (((palette&0x0f0)>>4) << 16));
}
