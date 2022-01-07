
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct TYPE_5__ {TYPE_1__ timer; } ;
struct hfc_pci {TYPE_2__ hw; } ;
struct TYPE_6__ {int timer; } ;


 struct hfc_pci* from_timer (int ,struct timer_list*,int ) ;
 struct hfc_pci* hc ;
 TYPE_3__ hw ;
 scalar_t__ jiffies ;

__attribute__((used)) static void
hfcpci_Timer(struct timer_list *t)
{
 struct hfc_pci *hc = from_timer(hc, t, hw.timer);
 hc->hw.timer.expires = jiffies + 75;





}
