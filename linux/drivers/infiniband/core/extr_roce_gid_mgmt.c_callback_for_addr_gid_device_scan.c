
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct update_gid_event_work {int gid_attr; int gid; int gid_op; } ;
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;


 void update_gid (int ,struct ib_device*,int ,int *,int *) ;

__attribute__((used)) static void callback_for_addr_gid_device_scan(struct ib_device *device,
           u8 port,
           struct net_device *rdma_ndev,
           void *cookie)
{
 struct update_gid_event_work *parsed = cookie;

 return update_gid(parsed->gid_op, device,
     port, &parsed->gid,
     &parsed->gid_attr);
}
