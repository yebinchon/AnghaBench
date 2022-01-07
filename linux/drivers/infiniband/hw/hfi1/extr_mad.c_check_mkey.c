
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ib_mad_hdr {int method; } ;
struct TYPE_2__ {int mkey_lease_timeout; int mkeyprot; scalar_t__ mkey; int mkey_violations; int mkey_lease_period; } ;
struct hfi1_ibport {TYPE_1__ rvp; } ;
typedef scalar_t__ __be64 ;
typedef int __be32 ;


 int HZ ;
 int IB_MAD_IGNORE_MKEY ;



 int bad_mkey (struct hfi1_ibport*,struct ib_mad_hdr*,scalar_t__,int ,int *,int ) ;
 int jiffies ;
 scalar_t__ time_after_eq (int,int) ;

__attribute__((used)) static int check_mkey(struct hfi1_ibport *ibp, struct ib_mad_hdr *mad,
        int mad_flags, __be64 mkey, __be32 dr_slid,
        u8 return_path[], u8 hop_cnt)
{
 int valid_mkey = 0;
 int ret = 0;


 if (ibp->rvp.mkey_lease_timeout &&
     time_after_eq(jiffies, ibp->rvp.mkey_lease_timeout)) {

  ibp->rvp.mkey_lease_timeout = 0;
  ibp->rvp.mkeyprot = 0;
 }

 if ((mad_flags & IB_MAD_IGNORE_MKEY) || ibp->rvp.mkey == 0 ||
     ibp->rvp.mkey == mkey)
  valid_mkey = 1;


 if (valid_mkey && ibp->rvp.mkey_lease_timeout &&
     (mad->method == 130 ||
      mad->method == 129 ||
      mad->method == 128))
  ibp->rvp.mkey_lease_timeout = 0;

 if (!valid_mkey) {
  switch (mad->method) {
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

   bad_mkey(ibp, mad, mkey, dr_slid, return_path,
     hop_cnt);
   ret = 1;
  }
 }

 return ret;
}
