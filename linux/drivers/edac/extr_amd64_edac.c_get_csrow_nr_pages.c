
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct amd64_pvt {int dbam1; int dbam0; TYPE_1__* ops; int umc; } ;
struct TYPE_2__ {int (* dbam_to_cs ) (struct amd64_pvt*,int ,int,int) ;} ;


 int DBAM_DIMM (int,int) ;
 int PAGE_SHIFT ;
 int edac_dbg (int ,char*,int,...) ;
 int f17_get_cs_mode (int,int ,struct amd64_pvt*) ;
 int stub1 (struct amd64_pvt*,int ,int,int) ;

__attribute__((used)) static u32 get_csrow_nr_pages(struct amd64_pvt *pvt, u8 dct, int csrow_nr_orig)
{
 u32 dbam = dct ? pvt->dbam1 : pvt->dbam0;
 int csrow_nr = csrow_nr_orig;
 u32 cs_mode, nr_pages;

 if (!pvt->umc) {
  csrow_nr >>= 1;
  cs_mode = DBAM_DIMM(csrow_nr, dbam);
 } else {
  cs_mode = f17_get_cs_mode(csrow_nr >> 1, dct, pvt);
 }

 nr_pages = pvt->ops->dbam_to_cs(pvt, dct, cs_mode, csrow_nr);
 nr_pages <<= 20 - PAGE_SHIFT;

 edac_dbg(0, "csrow: %d, channel: %d, DBAM idx: %d\n",
      csrow_nr_orig, dct, cs_mode);
 edac_dbg(0, "nr_pages/channel: %u\n", nr_pages);

 return nr_pages;
}
