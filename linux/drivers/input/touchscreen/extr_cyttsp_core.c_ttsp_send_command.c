
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyttsp {int dummy; } ;
typedef int cmd ;


 int CY_REG_BASE ;
 int ttsp_write_block_data (struct cyttsp*,int ,int,int *) ;

__attribute__((used)) static int ttsp_send_command(struct cyttsp *ts, u8 cmd)
{
 return ttsp_write_block_data(ts, CY_REG_BASE, sizeof(cmd), &cmd);
}
