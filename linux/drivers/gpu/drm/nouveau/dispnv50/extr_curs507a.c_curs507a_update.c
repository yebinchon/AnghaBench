
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int user; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct nv50_wndw {TYPE_2__ wimm; } ;


 int nvif_wr32 (int *,int,int) ;

__attribute__((used)) static void
curs507a_update(struct nv50_wndw *wndw, u32 *interlock)
{
 nvif_wr32(&wndw->wimm.base.user, 0x0080, 0x00000000);
}
