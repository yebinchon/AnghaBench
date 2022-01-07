
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amd64_pvt {int fam; int dclr0; int dbam0; int dbam1; } ;


 scalar_t__ DBAM_DIMM (int,int ) ;
 int WIDTH_128 ;
 int amd64_info (char*,int) ;
 int edac_dbg (int ,char*) ;

__attribute__((used)) static int f1x_early_channel_count(struct amd64_pvt *pvt)
{
 int i, j, channels = 0;


 if (pvt->fam == 0x10 && (pvt->dclr0 & WIDTH_128))
  return 2;
 edac_dbg(0, "Data width is not 128 bits - need more decoding\n");






 for (i = 0; i < 2; i++) {
  u32 dbam = (i ? pvt->dbam1 : pvt->dbam0);

  for (j = 0; j < 4; j++) {
   if (DBAM_DIMM(j, dbam) > 0) {
    channels++;
    break;
   }
  }
 }

 if (channels > 2)
  channels = 2;

 amd64_info("MCT channel count: %d\n", channels);

 return channels;
}
