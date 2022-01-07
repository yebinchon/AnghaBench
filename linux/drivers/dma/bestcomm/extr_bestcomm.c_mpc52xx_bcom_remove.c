
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct mpc52xx_sdma {int dummy; } ;
struct TYPE_3__ {int ofnode; int regs_base; int regs; } ;


 TYPE_1__* bcom_eng ;
 int bcom_engine_cleanup () ;
 int bcom_sram_cleanup () ;
 int iounmap (int ) ;
 int kfree (TYPE_1__*) ;
 int of_node_put (int ) ;
 int release_mem_region (int ,int) ;

__attribute__((used)) static int mpc52xx_bcom_remove(struct platform_device *op)
{

 bcom_engine_cleanup();


 bcom_sram_cleanup();


 iounmap(bcom_eng->regs);
 release_mem_region(bcom_eng->regs_base, sizeof(struct mpc52xx_sdma));


 of_node_put(bcom_eng->ofnode);


 kfree(bcom_eng);
 bcom_eng = ((void*)0);

 return 0;
}
