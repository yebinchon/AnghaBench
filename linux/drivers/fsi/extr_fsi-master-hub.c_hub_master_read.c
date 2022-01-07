
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct fsi_master_hub {TYPE_1__* upstream; scalar_t__ addr; } ;
struct fsi_master {int dummy; } ;
struct TYPE_2__ {int slave; } ;


 int EINVAL ;
 int FSI_HUB_LINK_SIZE ;
 int fsi_slave_read (int ,int ,void*,size_t) ;
 struct fsi_master_hub* to_fsi_master_hub (struct fsi_master*) ;

__attribute__((used)) static int hub_master_read(struct fsi_master *master, int link,
   uint8_t id, uint32_t addr, void *val, size_t size)
{
 struct fsi_master_hub *hub = to_fsi_master_hub(master);

 if (id != 0)
  return -EINVAL;

 addr += hub->addr + (link * FSI_HUB_LINK_SIZE);
 return fsi_slave_read(hub->upstream->slave, addr, val, size);
}
