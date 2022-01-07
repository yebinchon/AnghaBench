
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception_store {int chunk_shift; } ;
typedef int sector_t ;
typedef int chunk_t ;



__attribute__((used)) static inline chunk_t sector_to_chunk(struct dm_exception_store *store,
          sector_t sector)
{
 return sector >> store->chunk_shift;
}
