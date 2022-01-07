
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception_store {int chunk_shift; } ;
typedef int sector_t ;
typedef int chunk_t ;



__attribute__((used)) static sector_t chunk_to_sector(struct dm_exception_store *store,
    chunk_t chunk)
{
 return chunk << store->chunk_shift;
}
