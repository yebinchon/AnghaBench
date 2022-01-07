
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si2168_cmd {int wlen; int rlen; int args; } ;


 int memcpy (int ,int const*,int) ;

__attribute__((used)) static void cmd_init(struct si2168_cmd *cmd, const u8 *buf, int wlen, int rlen)
{
 memcpy(cmd->args, buf, wlen);
 cmd->wlen = wlen;
 cmd->rlen = rlen;
}
