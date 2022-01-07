
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sector_t ;


 int BARRIER_BUCKETS_NR_BITS ;
 int BARRIER_UNIT_SECTOR_BITS ;
 int hash_long (int,int ) ;

__attribute__((used)) static inline int sector_to_idx(sector_t sector)
{
 return hash_long(sector >> BARRIER_UNIT_SECTOR_BITS,
    BARRIER_BUCKETS_NR_BITS);
}
