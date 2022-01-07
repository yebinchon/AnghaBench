
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ status; } ;
struct ib_dm_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct ib_dm_iou_info {int max_controllers; int controller_list; int change_id; } ;


 int cpu_to_be16 (int) ;
 int srpt_set_ioc (int ,int,int) ;

__attribute__((used)) static void srpt_get_iou(struct ib_dm_mad *mad)
{
 struct ib_dm_iou_info *ioui;
 u8 slot;
 int i;

 ioui = (struct ib_dm_iou_info *)mad->data;
 ioui->change_id = cpu_to_be16(1);
 ioui->max_controllers = 16;


 srpt_set_ioc(ioui->controller_list, 1, 1);
 for (i = 1, slot = 2; i < 16; i++, slot++)
  srpt_set_ioc(ioui->controller_list, slot, 0);

 mad->mad_hdr.status = 0;
}
