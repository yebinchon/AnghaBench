
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nv10_gr_chan {int dummy; } ;


 int nv17_gr_mthd_celcius (struct nv10_gr_chan*,int ,int ) ;

__attribute__((used)) static bool
nv10_gr_mthd(struct nv10_gr_chan *chan, u8 class, u32 mthd, u32 data)
{
 bool (*func)(struct nv10_gr_chan *, u32, u32);
 switch (class) {
 case 0x99: func = nv17_gr_mthd_celcius; break;
 default:
  return 0;
 }
 return func(chan, mthd, data);
}
