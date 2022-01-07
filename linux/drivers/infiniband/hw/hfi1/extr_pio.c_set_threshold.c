
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hfi1_devdata {int * kernel_send_context; TYPE_2__** rcd; TYPE_1__* vld; } ;
struct TYPE_4__ {int rcvhdrqentsize; } ;
struct TYPE_3__ {int mtu; } ;


 int min (int ,int ) ;
 int sc_mtu_to_threshold (int ,int ,int ) ;
 int sc_percent_to_threshold (int ,int) ;
 int sc_set_cr_threshold (int ,int ) ;

__attribute__((used)) static void set_threshold(struct hfi1_devdata *dd, int scontext, int i)
{
 u32 thres;

 thres = min(sc_percent_to_threshold(dd->kernel_send_context[scontext],
         50),
      sc_mtu_to_threshold(dd->kernel_send_context[scontext],
     dd->vld[i].mtu,
     dd->rcd[0]->rcvhdrqentsize));
 sc_set_cr_threshold(dd->kernel_send_context[scontext], thres);
}
