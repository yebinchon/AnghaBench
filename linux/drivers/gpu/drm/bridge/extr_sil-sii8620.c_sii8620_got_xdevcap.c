
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int dummy; } ;


 int sii8620_mt_read_devcap (struct sii8620*,int) ;

__attribute__((used)) static void sii8620_got_xdevcap(struct sii8620 *ctx, int ret)
{
 if (ret < 0)
  return;

 sii8620_mt_read_devcap(ctx, 0);
}
