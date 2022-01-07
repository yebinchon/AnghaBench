
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u16 ;
struct TYPE_2__ {int lid; union ib_gid mgid; } ;
struct rvt_mcast {int refcount; int wait; int qp_list; TYPE_1__ mcast_addr; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 struct rvt_mcast* kzalloc (int,int ) ;

__attribute__((used)) static struct rvt_mcast *rvt_mcast_alloc(union ib_gid *mgid, u16 lid)
{
 struct rvt_mcast *mcast;

 mcast = kzalloc(sizeof(*mcast), GFP_KERNEL);
 if (!mcast)
  goto bail;

 mcast->mcast_addr.mgid = *mgid;
 mcast->mcast_addr.lid = lid;

 INIT_LIST_HEAD(&mcast->qp_list);
 init_waitqueue_head(&mcast->wait);
 atomic_set(&mcast->refcount, 0);

bail:
 return mcast;
}
