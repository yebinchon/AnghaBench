
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct its_vpe {int vpe_proxy_event; } ;
struct TYPE_2__ {size_t next_victim; int ** vpes; int dev; } ;


 int its_send_discard (int ,int) ;
 TYPE_1__ vpe_proxy ;

__attribute__((used)) static void its_vpe_db_proxy_unmap_locked(struct its_vpe *vpe)
{

 if (vpe->vpe_proxy_event == -1)
  return;

 its_send_discard(vpe_proxy.dev, vpe->vpe_proxy_event);
 vpe_proxy.vpes[vpe->vpe_proxy_event] = ((void*)0);
 if (vpe_proxy.vpes[vpe_proxy.next_victim])
  vpe_proxy.next_victim = vpe->vpe_proxy_event;

 vpe->vpe_proxy_event = -1;
}
