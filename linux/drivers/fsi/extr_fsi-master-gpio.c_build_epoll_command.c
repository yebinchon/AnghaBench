
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fsi_gpio_msg {scalar_t__ msg; scalar_t__ bits; } ;


 int FSI_CMD_EPOLL ;
 int msg_push_bits (struct fsi_gpio_msg*,int ,int) ;
 int msg_push_crc (struct fsi_gpio_msg*) ;

__attribute__((used)) static void build_epoll_command(struct fsi_gpio_msg *cmd, uint8_t slave_id)
{
 cmd->bits = 0;
 cmd->msg = 0;

 msg_push_bits(cmd, slave_id, 2);
 msg_push_bits(cmd, FSI_CMD_EPOLL, 3);
 msg_push_crc(cmd);
}
