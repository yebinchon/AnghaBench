
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DRXDAP_FASI_ADDR2BANK (int ) ;
 int DRXDAP_FASI_ADDR2BLOCK (int ) ;

__attribute__((used)) static
bool is_handled_by_aud_tr_if(u32 addr)
{
 bool retval = 0;

 if ((DRXDAP_FASI_ADDR2BLOCK(addr) == 4) &&
     (DRXDAP_FASI_ADDR2BANK(addr) > 1) &&
     (DRXDAP_FASI_ADDR2BANK(addr) < 6)) {
  retval = 1;
 }

 return retval;
}
