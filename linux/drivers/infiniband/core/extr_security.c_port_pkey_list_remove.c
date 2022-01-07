
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkey_index_qp_list {int qp_list_lock; } ;
struct ib_port_pkey {scalar_t__ state; int qp_list; } ;


 scalar_t__ IB_PORT_PKEY_LISTED ;
 scalar_t__ IB_PORT_PKEY_VALID ;
 struct pkey_index_qp_list* get_pkey_idx_qp_list (struct ib_port_pkey*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void port_pkey_list_remove(struct ib_port_pkey *pp)
{
 struct pkey_index_qp_list *pkey;

 if (pp->state != IB_PORT_PKEY_LISTED)
  return;

 pkey = get_pkey_idx_qp_list(pp);

 spin_lock(&pkey->qp_list_lock);
 list_del(&pp->qp_list);
 spin_unlock(&pkey->qp_list_lock);




 pp->state = IB_PORT_PKEY_VALID;
}
