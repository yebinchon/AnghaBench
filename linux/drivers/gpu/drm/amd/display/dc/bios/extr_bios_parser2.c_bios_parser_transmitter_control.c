
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_bios {int dummy; } ;
struct bp_transmitter_control {int dummy; } ;
struct TYPE_2__ {int (* transmitter_control ) (struct bios_parser*,struct bp_transmitter_control*) ;} ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;


 struct bios_parser* BP_FROM_DCB (struct dc_bios*) ;
 int BP_RESULT_FAILURE ;
 int stub1 (struct bios_parser*,struct bp_transmitter_control*) ;

__attribute__((used)) static enum bp_result bios_parser_transmitter_control(
 struct dc_bios *dcb,
 struct bp_transmitter_control *cntl)
{
 struct bios_parser *bp = BP_FROM_DCB(dcb);

 if (!bp->cmd_tbl.transmitter_control)
  return BP_RESULT_FAILURE;

 return bp->cmd_tbl.transmitter_control(bp, cntl);
}
