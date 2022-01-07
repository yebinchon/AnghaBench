
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv50_wndw_atom {int dummy; } ;
struct nv50_wndw {int dummy; } ;
struct TYPE_2__ {scalar_t__ cpp; } ;
struct nv50_head_atom {TYPE_1__ ovly; } ;



void
ovly507e_release(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw,
   struct nv50_head_atom *asyh)
{
 asyh->ovly.cpp = 0;
}
