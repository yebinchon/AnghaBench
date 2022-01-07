
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int get_smu_clock_info; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;


 int get_smu_clock_info_v3_1 ;

__attribute__((used)) static void init_get_smu_clock_info(struct bios_parser *bp)
{

 bp->cmd_tbl.get_smu_clock_info = get_smu_clock_info_v3_1;

}
