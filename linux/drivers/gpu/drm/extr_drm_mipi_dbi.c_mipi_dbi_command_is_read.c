
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mipi_dbi {scalar_t__* read_commands; } ;



__attribute__((used)) static bool mipi_dbi_command_is_read(struct mipi_dbi *dbi, u8 cmd)
{
 unsigned int i;

 if (!dbi->read_commands)
  return 0;

 for (i = 0; i < 0xff; i++) {
  if (!dbi->read_commands[i])
   return 0;
  if (cmd == dbi->read_commands[i])
   return 1;
 }

 return 0;
}
