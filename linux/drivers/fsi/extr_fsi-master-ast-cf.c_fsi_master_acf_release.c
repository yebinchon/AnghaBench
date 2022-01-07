
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_acf {int dev; scalar_t__ sram; int sram_pool; int lock; } ;
struct device {int dummy; } ;


 int SRAM_SIZE ;
 int aspeed_gpio_copro_set_ops (int *,int *) ;
 int dev_of_node (int ) ;
 int dev_to_fsi_master (struct device*) ;
 int fsi_master_acf_terminate (struct fsi_master_acf*) ;
 int gen_pool_free (int ,unsigned long,int ) ;
 int kfree (struct fsi_master_acf*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_node_put (int ) ;
 struct fsi_master_acf* to_fsi_master_acf (int ) ;

__attribute__((used)) static void fsi_master_acf_release(struct device *dev)
{
 struct fsi_master_acf *master = to_fsi_master_acf(dev_to_fsi_master(dev));


 mutex_lock(&master->lock);
 fsi_master_acf_terminate(master);
 aspeed_gpio_copro_set_ops(((void*)0), ((void*)0));
 mutex_unlock(&master->lock);


 gen_pool_free(master->sram_pool, (unsigned long)master->sram, SRAM_SIZE);
 of_node_put(dev_of_node(master->dev));

 kfree(master);
}
