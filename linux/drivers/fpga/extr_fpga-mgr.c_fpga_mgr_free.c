
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct fpga_manager {TYPE_1__ dev; } ;


 int fpga_mgr_ida ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct fpga_manager*) ;

void fpga_mgr_free(struct fpga_manager *mgr)
{
 ida_simple_remove(&fpga_mgr_ida, mgr->dev.id);
 kfree(mgr);
}
