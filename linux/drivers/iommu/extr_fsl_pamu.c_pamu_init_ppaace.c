
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int coherency_required; } ;
struct TYPE_4__ {TYPE_1__ to_host; } ;
struct paace {TYPE_2__ domain_attr; int addr_bitfields; } ;


 int PAACE_AF_PT ;
 int PAACE_DA_HOST_CR ;
 int PAACE_M_COHERENCE_REQ ;
 int PAACE_PT_PRIMARY ;
 int set_bf (int ,int ,int ) ;

__attribute__((used)) static void pamu_init_ppaace(struct paace *ppaace)
{
 set_bf(ppaace->addr_bitfields, PAACE_AF_PT, PAACE_PT_PRIMARY);

 set_bf(ppaace->domain_attr.to_host.coherency_required, PAACE_DA_HOST_CR,
        PAACE_M_COHERENCE_REQ);
}
