
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_acf {int cf_mem_addr; int scu; } ;


 int SCU_2400_COPRO_CACHE_CTL ;
 int SCU_2400_COPRO_CACHE_EN ;
 int SCU_2400_COPRO_SEG0 ;
 int SCU_2400_COPRO_SEG0_CACHE_EN ;
 int SCU_2400_COPRO_SEG2 ;
 int SCU_2400_COPRO_SEG6 ;
 int SCU_2400_COPRO_SEG_SWAP ;
 int SYSREG_BASE ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void setup_ast2400_cf_maps(struct fsi_master_acf *master)
{

 regmap_write(master->scu, SCU_2400_COPRO_SEG0, master->cf_mem_addr |
       SCU_2400_COPRO_SEG_SWAP);


 regmap_write(master->scu, SCU_2400_COPRO_SEG2, SYSREG_BASE |
       SCU_2400_COPRO_SEG_SWAP);


 regmap_write(master->scu, SCU_2400_COPRO_SEG6, SYSREG_BASE);


 regmap_write(master->scu, SCU_2400_COPRO_CACHE_CTL,
       SCU_2400_COPRO_SEG0_CACHE_EN | SCU_2400_COPRO_CACHE_EN);
}
