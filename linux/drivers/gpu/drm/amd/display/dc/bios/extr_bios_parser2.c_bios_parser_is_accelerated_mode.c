
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_bios {int dummy; } ;


 int bios_is_accelerated_mode (struct dc_bios*) ;

__attribute__((used)) static bool bios_parser_is_accelerated_mode(
 struct dc_bios *dcb)
{
 return bios_is_accelerated_mode(dcb);
}
