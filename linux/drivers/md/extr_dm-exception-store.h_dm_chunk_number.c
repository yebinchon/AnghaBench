
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chunk_t ;


 unsigned long long DM_CHUNK_NUMBER_BITS ;

__attribute__((used)) static inline chunk_t dm_chunk_number(chunk_t chunk)
{
 return chunk & (chunk_t)((1ULL << DM_CHUNK_NUMBER_BITS) - 1ULL);
}
