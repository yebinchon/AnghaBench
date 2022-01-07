
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu_sdbp_header {int len; } ;
struct TYPE_2__ {int of_node; } ;


 int DPRINTK (char*,...) ;
 struct smu_sdbp_header const* ERR_PTR (int) ;
 int mutex_lock (int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct smu_sdbp_header* of_get_property (int ,char*,unsigned int*) ;
 TYPE_1__* smu ;
 struct smu_sdbp_header* smu_create_sdb_partition (int) ;
 int smu_part_access ;
 int sprintf (char*,char*,int) ;

const struct smu_sdbp_header *__smu_get_sdb_partition(int id,
  unsigned int *size, int interruptible)
{
 char pname[32];
 const struct smu_sdbp_header *part;

 if (!smu)
  return ((void*)0);

 sprintf(pname, "sdb-partition-%02x", id);

 DPRINTK("smu_get_sdb_partition(%02x)\n", id);

 if (interruptible) {
  int rc;
  rc = mutex_lock_interruptible(&smu_part_access);
  if (rc)
   return ERR_PTR(rc);
 } else
  mutex_lock(&smu_part_access);

 part = of_get_property(smu->of_node, pname, size);
 if (part == ((void*)0)) {
  DPRINTK("trying to extract from SMU ...\n");
  part = smu_create_sdb_partition(id);
  if (part != ((void*)0) && size)
   *size = part->len << 2;
 }
 mutex_unlock(&smu_part_access);
 return part;
}
