
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct dcb_app {int protocol; int selector; } ;
struct bnxt_re_dev {struct net_device* netdev; } ;
typedef int app ;


 int ETH_P_IBOE ;
 int IEEE_8021QAZ_APP_SEL_DGRAM ;
 int IEEE_8021QAZ_APP_SEL_ETHERTYPE ;
 int ROCE_V2_UDP_DPORT ;
 int dcb_ieee_getapp_mask (struct net_device*,struct dcb_app*) ;
 int memset (struct dcb_app*,int ,int) ;

__attribute__((used)) static u32 bnxt_re_get_priority_mask(struct bnxt_re_dev *rdev)
{
 u32 prio_map = 0, tmp_map = 0;
 struct net_device *netdev;
 struct dcb_app app;

 netdev = rdev->netdev;

 memset(&app, 0, sizeof(app));
 app.selector = IEEE_8021QAZ_APP_SEL_ETHERTYPE;
 app.protocol = ETH_P_IBOE;
 tmp_map = dcb_ieee_getapp_mask(netdev, &app);
 prio_map = tmp_map;

 app.selector = IEEE_8021QAZ_APP_SEL_DGRAM;
 app.protocol = ROCE_V2_UDP_DPORT;
 tmp_map = dcb_ieee_getapp_mask(netdev, &app);
 prio_map |= tmp_map;

 return prio_map;
}
