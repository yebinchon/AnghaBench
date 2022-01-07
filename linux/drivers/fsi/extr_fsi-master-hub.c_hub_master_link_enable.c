
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_hub {int upstream; } ;
struct fsi_master {int dummy; } ;
typedef int __be32 ;


 int FSI_LINK_ENABLE_SETUP_TIME ;
 scalar_t__ FSI_MENP0 ;
 scalar_t__ FSI_MSENP0 ;
 int cpu_to_be32 (int) ;
 int fsi_device_read (int ,scalar_t__,int *,int) ;
 int fsi_device_write (int ,scalar_t__,int *,int) ;
 int mdelay (int ) ;
 struct fsi_master_hub* to_fsi_master_hub (struct fsi_master*) ;

__attribute__((used)) static int hub_master_link_enable(struct fsi_master *master, int link)
{
 struct fsi_master_hub *hub = to_fsi_master_hub(master);
 int idx, bit;
 __be32 reg;
 int rc;

 idx = link / 32;
 bit = link % 32;

 reg = cpu_to_be32(0x80000000 >> bit);

 rc = fsi_device_write(hub->upstream, FSI_MSENP0 + (4 * idx), &reg, 4);

 mdelay(FSI_LINK_ENABLE_SETUP_TIME);

 fsi_device_read(hub->upstream, FSI_MENP0 + (4 * idx), &reg, 4);

 return rc;
}
