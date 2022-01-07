
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mipi_dbi {int read_commands; } ;


 int EACCES ;
 int EINVAL ;
 int mipi_dbi_command_buf (struct mipi_dbi*,int ,int *,int) ;
 int mipi_dbi_command_is_read (struct mipi_dbi*,int ) ;

int mipi_dbi_command_read(struct mipi_dbi *dbi, u8 cmd, u8 *val)
{
 if (!dbi->read_commands)
  return -EACCES;

 if (!mipi_dbi_command_is_read(dbi, cmd))
  return -EINVAL;

 return mipi_dbi_command_buf(dbi, cmd, val, 1);
}
