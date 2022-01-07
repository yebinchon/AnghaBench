
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int * transmitter_control; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;


 int BIOS_CMD_TABLE_REVISION (int ,int,int) ;
 int BREAK_TO_DEBUGGER () ;
 int UNIPHYTransmitterControl ;
 int dm_output_to_console (char*,int) ;
 int * transmitter_control_v1_5 ;
 int * transmitter_control_v1_6 ;
 int * transmitter_control_v2 ;
 int * transmitter_control_v3 ;
 int * transmitter_control_v4 ;

__attribute__((used)) static void init_transmitter_control(struct bios_parser *bp)
{
 uint8_t frev;
 uint8_t crev;

 if (BIOS_CMD_TABLE_REVISION(UNIPHYTransmitterControl,
   frev, crev) == 0)
  BREAK_TO_DEBUGGER();
 switch (crev) {
 case 2:
  bp->cmd_tbl.transmitter_control = transmitter_control_v2;
  break;
 case 3:
  bp->cmd_tbl.transmitter_control = transmitter_control_v3;
  break;
 case 4:
  bp->cmd_tbl.transmitter_control = transmitter_control_v4;
  break;
 case 5:
  bp->cmd_tbl.transmitter_control = transmitter_control_v1_5;
  break;
 case 6:
  bp->cmd_tbl.transmitter_control = transmitter_control_v1_6;
  break;
 default:
  dm_output_to_console("Don't have transmitter_control for v%d\n", crev);
  bp->cmd_tbl.transmitter_control = ((void*)0);
  break;
 }
}
