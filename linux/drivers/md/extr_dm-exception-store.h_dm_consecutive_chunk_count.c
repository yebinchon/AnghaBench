
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception {int new_chunk; } ;


 int DM_CHUNK_NUMBER_BITS ;

__attribute__((used)) static inline unsigned dm_consecutive_chunk_count(struct dm_exception *e)
{
 return e->new_chunk >> DM_CHUNK_NUMBER_BITS;
}
