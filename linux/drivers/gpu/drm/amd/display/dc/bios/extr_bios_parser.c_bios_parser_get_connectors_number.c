
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct dc_bios {int dummy; } ;
struct TYPE_4__ {TYPE_1__* v1_1; } ;
struct bios_parser {TYPE_2__ object_info_tbl; } ;
struct TYPE_3__ {int usConnectorObjectTableOffset; } ;


 struct bios_parser* BP_FROM_DCB (struct dc_bios*) ;
 int get_number_of_objects (struct bios_parser*,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static uint8_t bios_parser_get_connectors_number(struct dc_bios *dcb)
{
 struct bios_parser *bp = BP_FROM_DCB(dcb);

 return get_number_of_objects(bp,
  le16_to_cpu(bp->object_info_tbl.v1_1->usConnectorObjectTableOffset));
}
