
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ps2dev {int dummy; } ;


 int MAKE_PS2_CMD (int,int,int ) ;
 int TP_COMMAND ;
 int ps2_command (struct ps2dev*,int *,int ) ;

__attribute__((used)) static int trackpoint_read(struct ps2dev *ps2dev, u8 loc, u8 *results)
{
 results[0] = loc;

 return ps2_command(ps2dev, results, MAKE_PS2_CMD(1, 1, TP_COMMAND));
}
