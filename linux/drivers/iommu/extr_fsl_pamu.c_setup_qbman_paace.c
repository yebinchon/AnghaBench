
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int coherency_required; } ;
struct TYPE_6__ {TYPE_1__ to_host; } ;
struct TYPE_8__ {int omi; } ;
struct TYPE_7__ {TYPE_4__ index_ot; } ;
struct paace {TYPE_2__ domain_attr; int impl_attr; TYPE_3__ op_encode; } ;



 int OMI_QMAN ;
 int OMI_QMAN_PRIV ;
 int PAACE_DA_HOST_CR ;
 int PAACE_IA_CID ;
 int PAACE_IA_OTM ;
 int PAACE_OTM_INDEXED ;
 int PAMU_ATTR_CACHE_L3 ;


 int get_stash_id (int ,int ) ;
 int set_bf (int ,int ,int ) ;

__attribute__((used)) static void setup_qbman_paace(struct paace *ppaace, int paace_type)
{
 switch (paace_type) {
 case 129:
  set_bf(ppaace->impl_attr, PAACE_IA_OTM, PAACE_OTM_INDEXED);
  ppaace->op_encode.index_ot.omi = OMI_QMAN_PRIV;

  set_bf(ppaace->impl_attr, PAACE_IA_CID, get_stash_id(PAMU_ATTR_CACHE_L3, 0));
  set_bf(ppaace->domain_attr.to_host.coherency_required, PAACE_DA_HOST_CR,
         0);
  break;
 case 128:
  set_bf(ppaace->impl_attr, PAACE_IA_OTM, PAACE_OTM_INDEXED);
  ppaace->op_encode.index_ot.omi = OMI_QMAN;

  set_bf(ppaace->impl_attr, PAACE_IA_CID, get_stash_id(PAMU_ATTR_CACHE_L3, 0));
  break;
 case 130:
  set_bf(ppaace->domain_attr.to_host.coherency_required, PAACE_DA_HOST_CR,
         0);
  break;
 }
}
