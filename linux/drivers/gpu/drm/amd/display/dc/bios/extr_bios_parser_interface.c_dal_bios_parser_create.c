
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_bios {int dummy; } ;
struct bp_init_data {int dummy; } ;
typedef enum dce_version { ____Placeholder_dce_version } dce_version ;


 struct dc_bios* bios_parser_create (struct bp_init_data*,int) ;
 struct dc_bios* firmware_parser_create (struct bp_init_data*,int) ;

struct dc_bios *dal_bios_parser_create(
 struct bp_init_data *init,
 enum dce_version dce_version)
{
 struct dc_bios *bios = ((void*)0);

 bios = firmware_parser_create(init, dce_version);


 if (bios == ((void*)0))
  bios = bios_parser_create(init, dce_version);

 return bios;
}
