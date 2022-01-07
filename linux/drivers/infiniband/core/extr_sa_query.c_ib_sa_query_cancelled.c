
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sa_query {int flags; } ;


 int IB_SA_CANCEL ;

__attribute__((used)) static inline int ib_sa_query_cancelled(struct ib_sa_query *query)
{
 return (query->flags & IB_SA_CANCEL);
}
