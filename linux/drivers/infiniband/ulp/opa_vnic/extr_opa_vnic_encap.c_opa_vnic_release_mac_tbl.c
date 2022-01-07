
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mac_tbl_digest; } ;
struct TYPE_4__ {TYPE_1__ vport; } ;
struct opa_vnic_adapter {int mactbl_lock; TYPE_2__ info; int mactbl; } ;
struct hlist_head {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opa_vnic_free_mac_tbl (struct hlist_head*) ;
 struct hlist_head* rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,int *) ;
 int synchronize_rcu () ;

void opa_vnic_release_mac_tbl(struct opa_vnic_adapter *adapter)
{
 struct hlist_head *mactbl;

 mutex_lock(&adapter->mactbl_lock);
 mactbl = rcu_access_pointer(adapter->mactbl);
 rcu_assign_pointer(adapter->mactbl, ((void*)0));
 synchronize_rcu();
 opa_vnic_free_mac_tbl(mactbl);
 adapter->info.vport.mac_tbl_digest = 0;
 mutex_unlock(&adapter->mactbl_lock);
}
