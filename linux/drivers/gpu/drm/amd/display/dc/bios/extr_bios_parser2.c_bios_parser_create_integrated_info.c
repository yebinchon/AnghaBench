
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct integrated_info {int dummy; } ;
struct dc_bios {int dummy; } ;
struct bios_parser {int dummy; } ;


 int ASSERT_CRITICAL (int ) ;
 struct bios_parser* BP_FROM_DCB (struct dc_bios*) ;
 scalar_t__ BP_RESULT_OK ;
 int GFP_KERNEL ;
 scalar_t__ construct_integrated_info (struct bios_parser*,struct integrated_info*) ;
 int kfree (struct integrated_info*) ;
 struct integrated_info* kzalloc (int,int ) ;

__attribute__((used)) static struct integrated_info *bios_parser_create_integrated_info(
 struct dc_bios *dcb)
{
 struct bios_parser *bp = BP_FROM_DCB(dcb);
 struct integrated_info *info = ((void*)0);

 info = kzalloc(sizeof(struct integrated_info), GFP_KERNEL);

 if (info == ((void*)0)) {
  ASSERT_CRITICAL(0);
  return ((void*)0);
 }

 if (construct_integrated_info(bp, info) == BP_RESULT_OK)
  return info;

 kfree(info);

 return ((void*)0);
}
