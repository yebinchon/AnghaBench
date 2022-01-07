
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nouveau_channel {int dummy; } ;


 int OUT_RING (struct nouveau_channel*,int) ;

__attribute__((used)) static inline void
BEGIN_IMC0(struct nouveau_channel *chan, int subc, int mthd, u16 data)
{
 OUT_RING(chan, 0x80000000 | (data << 16) | (subc << 13) | (mthd >> 2));
}
