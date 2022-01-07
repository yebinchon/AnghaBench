
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sector_t ;


 int STRIPE_HASH_LOCKS_MASK ;
 int STRIPE_SHIFT ;

__attribute__((used)) static inline int stripe_hash_locks_hash(sector_t sect)
{
 return (sect >> STRIPE_SHIFT) & STRIPE_HASH_LOCKS_MASK;
}
