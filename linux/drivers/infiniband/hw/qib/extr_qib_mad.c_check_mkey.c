
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mkey_lease_timeout; int mkeyprot; scalar_t__ mkey; int mkey_violations; int mkey_lease_period; } ;
struct qib_ibport {TYPE_1__ rvp; } ;
struct ib_smp {scalar_t__ mkey; int method; } ;


 int HZ ;
 int IB_MAD_IGNORE_MKEY ;



 int jiffies ;
 int qib_bad_mkey (struct qib_ibport*,struct ib_smp*) ;
 scalar_t__ time_after_eq (int,int) ;

__attribute__((used)) static int check_mkey(struct qib_ibport *ibp, struct ib_smp *smp, int mad_flags)
{
 int valid_mkey = 0;
 int ret = 0;


 if (ibp->rvp.mkey_lease_timeout &&
     time_after_eq(jiffies, ibp->rvp.mkey_lease_timeout)) {

  ibp->rvp.mkey_lease_timeout = 0;
  ibp->rvp.mkeyprot = 0;
 }

 if ((mad_flags & IB_MAD_IGNORE_MKEY) || ibp->rvp.mkey == 0 ||
     ibp->rvp.mkey == smp->mkey)
  valid_mkey = 1;


 if (valid_mkey && ibp->rvp.mkey_lease_timeout &&
     (smp->method == 130 ||
      smp->method == 129 ||
      smp->method == 128))
  ibp->rvp.mkey_lease_timeout = 0;

 if (!valid_mkey) {
  switch (smp->method) {
  case 130:

   if (ibp->rvp.mkeyprot < 2)
    break;

  case 129:
  case 128:
   if (ibp->rvp.mkey_violations != 0xFFFF)
    ++ibp->rvp.mkey_violations;
   if (!ibp->rvp.mkey_lease_timeout &&
       ibp->rvp.mkey_lease_period)
    ibp->rvp.mkey_lease_timeout = jiffies +
     ibp->rvp.mkey_lease_period * HZ;

   qib_bad_mkey(ibp, smp);
   ret = 1;
  }
 }

 return ret;
}
