
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;


 int CHECK_ENABLE ;
 int SD (int ) ;
 int hfi1_pkt_base_sdma_integrity (struct hfi1_devdata*) ;
 int write_sde_csr (struct sdma_engine*,int ,int ) ;

__attribute__((used)) static void set_sdma_integrity(struct sdma_engine *sde)
{
 struct hfi1_devdata *dd = sde->dd;

 write_sde_csr(sde, SD(CHECK_ENABLE),
        hfi1_pkt_base_sdma_integrity(dd));
}
