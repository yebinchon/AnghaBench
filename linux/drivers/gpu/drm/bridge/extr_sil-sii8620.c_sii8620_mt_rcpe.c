
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int dummy; } ;


 int MHL_MSC_MSG_RCPE ;
 int sii8620_mt_msc_msg (struct sii8620*,int ,int ) ;

__attribute__((used)) static void sii8620_mt_rcpe(struct sii8620 *ctx, u8 code)
{
 sii8620_mt_msc_msg(ctx, MHL_MSC_MSG_RCPE, code);
}
