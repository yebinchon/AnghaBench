
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etr_buf {int dummy; } ;


 int tmc_free_etr_buf (struct etr_buf*) ;

__attribute__((used)) static void
tmc_etr_free_sysfs_buf(struct etr_buf *buf)
{
 if (buf)
  tmc_free_etr_buf(buf);
}
