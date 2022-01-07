
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_acf {scalar_t__ sram; } ;


 int ARB_ARM_ACK ;
 scalar_t__ ARB_REG ;
 scalar_t__ CF_STARTED ;
 int iowrite32 (int ,scalar_t__) ;
 int iowrite8 (int ,scalar_t__) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int release_copro_gpios (struct fsi_master_acf*) ;
 int reset_cf (struct fsi_master_acf*) ;

__attribute__((used)) static void fsi_master_acf_terminate(struct fsi_master_acf *master)
{
 unsigned long flags;







 local_irq_save(flags);


 reset_cf(master);


 iowrite32(0, master->sram + CF_STARTED);




 iowrite8(ARB_ARM_ACK, master->sram + ARB_REG);

 local_irq_restore(flags);


 release_copro_gpios(master);
}
