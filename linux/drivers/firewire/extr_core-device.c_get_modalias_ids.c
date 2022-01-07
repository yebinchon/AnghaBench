
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_unit {int * directory; } ;
struct TYPE_2__ {int * config_rom; } ;


 TYPE_1__* fw_parent_device (struct fw_unit*) ;
 int get_ids (int *,int*) ;

__attribute__((used)) static void get_modalias_ids(struct fw_unit *unit, int *id)
{
 get_ids(&fw_parent_device(unit)->config_rom[5], id);
 get_ids(unit->directory, id);
}
