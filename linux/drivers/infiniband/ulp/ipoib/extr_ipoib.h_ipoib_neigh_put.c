
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_neigh {int refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int ipoib_neigh_dtor (struct ipoib_neigh*) ;

__attribute__((used)) static inline void ipoib_neigh_put(struct ipoib_neigh *neigh)
{
 if (atomic_dec_and_test(&neigh->refcnt))
  ipoib_neigh_dtor(neigh);
}
