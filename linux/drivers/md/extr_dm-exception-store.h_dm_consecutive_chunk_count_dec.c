
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception {unsigned long long new_chunk; } ;


 int BUG_ON (int) ;
 unsigned long long DM_CHUNK_NUMBER_BITS ;
 int dm_consecutive_chunk_count (struct dm_exception*) ;

__attribute__((used)) static inline void dm_consecutive_chunk_count_dec(struct dm_exception *e)
{
 BUG_ON(!dm_consecutive_chunk_count(e));

 e->new_chunk -= (1ULL << DM_CHUNK_NUMBER_BITS);
}
