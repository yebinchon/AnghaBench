
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_acf {int scu; } ;


 int SCU_COPRO_CLK_EN ;
 int SCU_COPRO_CTRL ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void start_cf(struct fsi_master_acf *master)
{
 regmap_write(master->scu, SCU_COPRO_CTRL, SCU_COPRO_CLK_EN);
}
