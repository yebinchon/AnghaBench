
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long nr_pages; } ;
struct tmc_sg_table {TYPE_1__ data_pages; } ;


 unsigned long PAGE_SHIFT ;

__attribute__((used)) static inline unsigned long
tmc_sg_table_buf_size(struct tmc_sg_table *sg_table)
{
 return sg_table->data_pages.nr_pages << PAGE_SHIFT;
}
