
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_wndw {int notify; } ;


 int nvif_notify_get (int *) ;

void
nv50_wndw_init(struct nv50_wndw *wndw)
{
 nvif_notify_get(&wndw->notify);
}
