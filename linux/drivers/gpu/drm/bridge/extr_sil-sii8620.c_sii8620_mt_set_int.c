
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int dummy; } ;


 int MHL_SET_INT ;
 int sii8620_mt_msc_cmd (struct sii8620*,int ,int ,int ) ;

__attribute__((used)) static inline void sii8620_mt_set_int(struct sii8620 *ctx, u8 irq, u8 mask)
{
 sii8620_mt_msc_cmd(ctx, MHL_SET_INT, irq, mask);
}
