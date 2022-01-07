
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int dummy; } ;


 int MHL_MSC_MSG ;
 int sii8620_mt_msc_cmd (struct sii8620*,int ,int ,int ) ;

__attribute__((used)) static void sii8620_mt_msc_msg(struct sii8620 *ctx, u8 cmd, u8 data)
{
 sii8620_mt_msc_cmd(ctx, MHL_MSC_MSG, cmd, data);
}
