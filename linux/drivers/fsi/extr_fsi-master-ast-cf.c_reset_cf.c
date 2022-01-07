
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_acf {int scu; } ;


 int SCU_COPRO_CTRL ;
 int SCU_COPRO_RESET ;
 int regmap_write (int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void reset_cf(struct fsi_master_acf *master)
{
 regmap_write(master->scu, SCU_COPRO_CTRL, SCU_COPRO_RESET);
 usleep_range(20,20);
 regmap_write(master->scu, SCU_COPRO_CTRL, 0);
 usleep_range(20,20);
}
