
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pegasus {int dummy; } ;
typedef int cmd ;


 int NOTETAKER_SET_CMD ;
 int NOTETAKER_SET_MODE ;
 int pegasus_control_msg (struct pegasus*,int *,int) ;

__attribute__((used)) static int pegasus_set_mode(struct pegasus *pegasus, u8 mode, u8 led)
{
 u8 cmd[] = { NOTETAKER_SET_CMD, NOTETAKER_SET_MODE, led, mode };

 return pegasus_control_msg(pegasus, cmd, sizeof(cmd));
}
