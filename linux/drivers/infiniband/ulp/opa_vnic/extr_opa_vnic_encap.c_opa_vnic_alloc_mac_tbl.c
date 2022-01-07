
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hlist_head {int dummy; } ;


 int ENOMEM ;
 struct hlist_head* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int OPA_VNIC_MAC_TBL_SIZE ;
 struct hlist_head* kzalloc (int,int ) ;
 int vnic_hash_init (struct hlist_head*) ;

__attribute__((used)) static struct hlist_head *opa_vnic_alloc_mac_tbl(void)
{
 u32 size = sizeof(struct hlist_head) * OPA_VNIC_MAC_TBL_SIZE;
 struct hlist_head *mactbl;

 mactbl = kzalloc(size, GFP_KERNEL);
 if (!mactbl)
  return ERR_PTR(-ENOMEM);

 vnic_hash_init(mactbl);
 return mactbl;
}
