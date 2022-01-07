
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fsi_slave {int link; int dev; int id; struct fsi_master* master; } ;
struct fsi_master {int dummy; } ;
typedef int stat ;
typedef int irq ;
typedef int __be32 ;


 scalar_t__ FSI_SISC ;
 scalar_t__ FSI_SLAVE_BASE ;
 scalar_t__ FSI_SSTAT ;
 int be32_to_cpu (int ) ;
 int dev_dbg (int *,char*,int ,int ) ;
 int fsi_master_read (struct fsi_master*,int,int ,scalar_t__,int *,int) ;
 int fsi_master_write (struct fsi_master*,int,int ,scalar_t__,int *,int) ;

__attribute__((used)) static int fsi_slave_report_and_clear_errors(struct fsi_slave *slave)
{
 struct fsi_master *master = slave->master;
 __be32 irq, stat;
 int rc, link;
 uint8_t id;

 link = slave->link;
 id = slave->id;

 rc = fsi_master_read(master, link, id, FSI_SLAVE_BASE + FSI_SISC,
   &irq, sizeof(irq));
 if (rc)
  return rc;

 rc = fsi_master_read(master, link, id, FSI_SLAVE_BASE + FSI_SSTAT,
   &stat, sizeof(stat));
 if (rc)
  return rc;

 dev_dbg(&slave->dev, "status: 0x%08x, sisc: 0x%08x\n",
   be32_to_cpu(stat), be32_to_cpu(irq));


 return fsi_master_write(master, link, id, FSI_SLAVE_BASE + FSI_SISC,
   &irq, sizeof(irq));
}
