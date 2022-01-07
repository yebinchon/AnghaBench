
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_bios {int dummy; } ;
struct bp_init_data {int dummy; } ;
struct bios_parser {struct dc_bios base; } ;
typedef enum dce_version { ____Placeholder_dce_version } dce_version ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 scalar_t__ bios_parser_construct (struct bios_parser*,struct bp_init_data*,int) ;
 int kfree (struct bios_parser*) ;
 struct bios_parser* kzalloc (int,int ) ;

struct dc_bios *bios_parser_create(
 struct bp_init_data *init,
 enum dce_version dce_version)
{
 struct bios_parser *bp = ((void*)0);

 bp = kzalloc(sizeof(struct bios_parser), GFP_KERNEL);
 if (!bp)
  return ((void*)0);

 if (bios_parser_construct(bp, init, dce_version))
  return &bp->base;

 kfree(bp);
 BREAK_TO_DEBUGGER();
 return ((void*)0);
}
