
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int port_cap_flags; } ;
struct qib_ibport {int* sl_to_vl; TYPE_1__ rvp; } ;
struct ib_smp {int status; scalar_t__ data; } ;
struct ib_device {int dummy; } ;


 unsigned int ARRAY_SIZE (int*) ;
 int IB_PORT_SL_MAP_SUP ;
 int IB_SMP_UNSUP_METHOD ;
 int _QIB_EVENT_SL2VL_CHANGE_BIT ;
 int ppd_from_ibp (struct qib_ibport*) ;
 int qib_set_uevent_bits (int ,int ) ;
 int reply (struct ib_smp*) ;
 int subn_get_sl_to_vl (struct ib_smp*,struct ib_device*,int) ;
 struct qib_ibport* to_iport (struct ib_device*,int) ;

__attribute__((used)) static int subn_set_sl_to_vl(struct ib_smp *smp, struct ib_device *ibdev,
        u8 port)
{
 struct qib_ibport *ibp = to_iport(ibdev, port);
 u8 *p = (u8 *) smp->data;
 unsigned i;

 if (!(ibp->rvp.port_cap_flags & IB_PORT_SL_MAP_SUP)) {
  smp->status |= IB_SMP_UNSUP_METHOD;
  return reply(smp);
 }

 for (i = 0; i < ARRAY_SIZE(ibp->sl_to_vl); i += 2, p++) {
  ibp->sl_to_vl[i] = *p >> 4;
  ibp->sl_to_vl[i + 1] = *p & 0xF;
 }
 qib_set_uevent_bits(ppd_from_ibp(to_iport(ibdev, port)),
       _QIB_EVENT_SL2VL_CHANGE_BIT);

 return subn_get_sl_to_vl(smp, ibdev, port);
}
