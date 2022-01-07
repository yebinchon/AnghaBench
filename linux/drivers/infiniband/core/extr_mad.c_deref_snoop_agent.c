
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_snoop_private {int comp; int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static inline void deref_snoop_agent(struct ib_mad_snoop_private *mad_snoop_priv)
{
 if (atomic_dec_and_test(&mad_snoop_priv->refcount))
  complete(&mad_snoop_priv->comp);
}
