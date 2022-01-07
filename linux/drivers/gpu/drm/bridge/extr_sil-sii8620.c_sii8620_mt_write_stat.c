
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int dummy; } ;


 int MHL_WRITE_STAT ;
 int sii8620_mt_msc_cmd (struct sii8620*,int ,int ,int ) ;

__attribute__((used)) static void sii8620_mt_write_stat(struct sii8620 *ctx, u8 reg, u8 val)
{
 sii8620_mt_msc_cmd(ctx, MHL_WRITE_STAT, reg, val);
}
