
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception_store {scalar_t__ chunk_shift; scalar_t__ chunk_mask; scalar_t__ chunk_size; } ;


 int EINVAL ;
 int dm_exception_store_set_chunk_size (struct dm_exception_store*,unsigned int,char**) ;
 scalar_t__ kstrtouint (char const*,int,unsigned int*) ;

__attribute__((used)) static int set_chunk_size(struct dm_exception_store *store,
     const char *chunk_size_arg, char **error)
{
 unsigned chunk_size;

 if (kstrtouint(chunk_size_arg, 10, &chunk_size)) {
  *error = "Invalid chunk size";
  return -EINVAL;
 }

 if (!chunk_size) {
  store->chunk_size = store->chunk_mask = store->chunk_shift = 0;
  return 0;
 }

 return dm_exception_store_set_chunk_size(store, chunk_size, error);
}
