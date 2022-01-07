
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hfi1_devdata {scalar_t__ sc2vl; int sc2vl_lock; } ;


 scalar_t__ OPA_MAX_SCS ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;

__attribute__((used)) static inline u8 sc_to_vlt(struct hfi1_devdata *dd, u8 sc5)
{
 unsigned seq;
 u8 rval;

 if (sc5 >= OPA_MAX_SCS)
  return (u8)(0xff);

 do {
  seq = read_seqbegin(&dd->sc2vl_lock);
  rval = *(((u8 *)dd->sc2vl) + sc5);
 } while (read_seqretry(&dd->sc2vl_lock, seq));

 return rval;
}
