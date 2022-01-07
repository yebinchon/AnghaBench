
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int dummy; } ;


 int sii8620_mt_read_devcap_reg (struct sii8620*,int) ;

__attribute__((used)) static inline void sii8620_mt_read_xdevcap_reg(struct sii8620 *ctx, u8 reg)
{
 sii8620_mt_read_devcap_reg(ctx, reg | 0x80);
}
