
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mapped_device {int dummy; } ;
struct hash_cell {int dummy; } ;


 struct mapped_device* dm_get_md (int ) ;
 struct hash_cell* dm_get_mdptr (struct mapped_device*) ;
 int dm_put (struct mapped_device*) ;
 int huge_decode_dev (int ) ;

__attribute__((used)) static struct hash_cell *__get_dev_cell(uint64_t dev)
{
 struct mapped_device *md;
 struct hash_cell *hc;

 md = dm_get_md(huge_decode_dev(dev));
 if (!md)
  return ((void*)0);

 hc = dm_get_mdptr(md);
 if (!hc) {
  dm_put(md);
  return ((void*)0);
 }

 return hc;
}
