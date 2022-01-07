
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_msg {int msg; int bits; } ;



__attribute__((used)) static void msg_finish_cmd(struct fsi_msg *cmd)
{

 cmd->msg <<= (64 - cmd->bits);
}
