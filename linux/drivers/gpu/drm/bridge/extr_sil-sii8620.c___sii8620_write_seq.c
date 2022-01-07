
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sii8620 {int dummy; } ;


 int sii8620_write (struct sii8620*,int const,int const) ;

__attribute__((used)) static void __sii8620_write_seq(struct sii8620 *ctx, const u16 *seq, int len)
{
 int i;

 for (i = 0; i < len; i += 2)
  sii8620_write(ctx, seq[i], seq[i + 1]);
}
