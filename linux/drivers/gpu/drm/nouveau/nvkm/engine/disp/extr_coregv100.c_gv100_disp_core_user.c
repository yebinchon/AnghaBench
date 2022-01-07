
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nv50_disp_chan {int dummy; } ;



__attribute__((used)) static u64
gv100_disp_core_user(struct nv50_disp_chan *chan, u64 *psize)
{
 *psize = 0x10000;
 return 0x680000;
}
