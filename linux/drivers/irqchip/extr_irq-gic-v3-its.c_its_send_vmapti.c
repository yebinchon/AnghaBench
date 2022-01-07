
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct its_vlpi_map {int db_enabled; int vintid; int vpe; } ;
struct TYPE_3__ {struct its_vlpi_map* vlpi_maps; } ;
struct its_device {int its; TYPE_1__ event_map; } ;
struct TYPE_4__ {size_t event_id; int db_enabled; int virt_id; struct its_device* dev; int vpe; } ;
struct its_cmd_desc {TYPE_2__ its_vmapti_cmd; } ;


 int its_build_vmapti_cmd ;
 int its_send_single_vcommand (int ,int ,struct its_cmd_desc*) ;

__attribute__((used)) static void its_send_vmapti(struct its_device *dev, u32 id)
{
 struct its_vlpi_map *map = &dev->event_map.vlpi_maps[id];
 struct its_cmd_desc desc;

 desc.its_vmapti_cmd.vpe = map->vpe;
 desc.its_vmapti_cmd.dev = dev;
 desc.its_vmapti_cmd.virt_id = map->vintid;
 desc.its_vmapti_cmd.event_id = id;
 desc.its_vmapti_cmd.db_enabled = map->db_enabled;

 its_send_single_vcommand(dev->its, its_build_vmapti_cmd, &desc);
}
