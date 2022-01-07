
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fsi_slave {int id; int link; int master; int t_echo_delay; int t_send_delay; } ;
typedef int data ;
typedef int __be32 ;


 scalar_t__ FSI_SLAVE_BASE ;
 scalar_t__ FSI_SMODE ;
 int cpu_to_be32 (int ) ;
 int fsi_master_write (int ,int ,int ,scalar_t__,int *,int) ;
 int fsi_slave_smode (int ,int ,int ) ;

__attribute__((used)) static int fsi_slave_set_smode(struct fsi_slave *slave)
{
 uint32_t smode;
 __be32 data;




 smode = fsi_slave_smode(slave->id, slave->t_send_delay, slave->t_echo_delay);
 data = cpu_to_be32(smode);

 return fsi_master_write(slave->master, slave->link, slave->id,
    FSI_SLAVE_BASE + FSI_SMODE,
    &data, sizeof(data));
}
