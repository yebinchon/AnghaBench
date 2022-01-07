
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_bios {int dummy; } ;
struct bios_parser {int dummy; } ;


 struct bios_parser* BP_FROM_DCB (struct dc_bios*) ;
 int BREAK_TO_DEBUGGER () ;
 int destruct (struct bios_parser*) ;
 int kfree (struct bios_parser*) ;

__attribute__((used)) static void bios_parser_destroy(struct dc_bios **dcb)
{
 struct bios_parser *bp = BP_FROM_DCB(*dcb);

 if (!bp) {
  BREAK_TO_DEBUGGER();
  return;
 }

 destruct(bp);

 kfree(bp);
 *dcb = ((void*)0);
}
