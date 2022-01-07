
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct device_id {int dummy; } ;
struct dc_bios {int dummy; } ;
struct TYPE_4__ {TYPE_1__* v1_4; } ;
struct bios_parser {TYPE_2__ object_info_tbl; } ;
struct TYPE_3__ {int supporteddevices; } ;


 struct bios_parser* BP_FROM_DCB (struct dc_bios*) ;
 int get_support_mask_for_device_id (struct device_id) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static bool bios_parser_is_device_id_supported(
 struct dc_bios *dcb,
 struct device_id id)
{
 struct bios_parser *bp = BP_FROM_DCB(dcb);

 uint32_t mask = get_support_mask_for_device_id(id);

 return (le16_to_cpu(bp->object_info_tbl.v1_4->supporteddevices) &
        mask) != 0;
}
