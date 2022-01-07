
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {int size; } ;
struct etr_buf {int dummy; } ;


 int cpu_to_node (int ) ;
 struct etr_buf* tmc_alloc_etr_buf (struct tmc_drvdata*,int ,int ,int ,int *) ;

__attribute__((used)) static struct etr_buf *
tmc_etr_setup_sysfs_buf(struct tmc_drvdata *drvdata)
{
 return tmc_alloc_etr_buf(drvdata, drvdata->size,
     0, cpu_to_node(0), ((void*)0));
}
