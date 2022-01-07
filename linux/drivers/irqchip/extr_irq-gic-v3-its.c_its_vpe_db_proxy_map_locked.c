
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct its_vpe {int vpe_proxy_event; int vpe_db_lpi; int col_idx; } ;
struct TYPE_4__ {int * col_map; } ;
struct TYPE_6__ {int nr_ites; TYPE_1__ event_map; } ;
struct TYPE_5__ {size_t next_victim; TYPE_3__* dev; struct its_vpe** vpes; } ;


 int its_send_mapti (TYPE_3__*,int ,size_t) ;
 int its_vpe_db_proxy_unmap_locked (struct its_vpe*) ;
 TYPE_2__ vpe_proxy ;

__attribute__((used)) static void its_vpe_db_proxy_map_locked(struct its_vpe *vpe)
{

 if (vpe->vpe_proxy_event != -1)
  return;


 if (vpe_proxy.vpes[vpe_proxy.next_victim])
  its_vpe_db_proxy_unmap_locked(vpe_proxy.vpes[vpe_proxy.next_victim]);


 vpe_proxy.vpes[vpe_proxy.next_victim] = vpe;
 vpe->vpe_proxy_event = vpe_proxy.next_victim;
 vpe_proxy.next_victim = (vpe_proxy.next_victim + 1) % vpe_proxy.dev->nr_ites;

 vpe_proxy.dev->event_map.col_map[vpe->vpe_proxy_event] = vpe->col_idx;
 its_send_mapti(vpe_proxy.dev, vpe->vpe_db_lpi, vpe->vpe_proxy_event);
}
