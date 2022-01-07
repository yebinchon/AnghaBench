
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore {int exceptions_per_area; } ;
typedef int chunk_t ;


 int NUM_SNAPSHOT_HDR_CHUNKS ;

__attribute__((used)) static chunk_t area_location(struct pstore *ps, chunk_t area)
{
 return NUM_SNAPSHOT_HDR_CHUNKS + ((ps->exceptions_per_area + 1) * area);
}
