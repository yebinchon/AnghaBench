
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct edid {int extensions; } ;
struct cec_adapter {int dummy; } ;


 int CEC_PHYS_ADDR_INVALID ;
 int EDID_LENGTH ;
 int cec_get_edid_phys_addr (int const*,int,int *) ;
 int cec_s_phys_addr (struct cec_adapter*,int ,int) ;

void cec_s_phys_addr_from_edid(struct cec_adapter *adap,
          const struct edid *edid)
{
 u16 pa = CEC_PHYS_ADDR_INVALID;

 if (edid && edid->extensions)
  pa = cec_get_edid_phys_addr((const u8 *)edid,
    EDID_LENGTH * (edid->extensions + 1), ((void*)0));
 cec_s_phys_addr(adap, pa, 0);
}
