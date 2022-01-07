
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sii8620 {int dummy; } ;


 int sii8620_read_buf (struct sii8620*,int ,int *,int) ;

__attribute__((used)) static u8 sii8620_readb(struct sii8620 *ctx, u16 addr)
{
 u8 ret;

 sii8620_read_buf(ctx, addr, &ret, 1);
 return ret;
}
