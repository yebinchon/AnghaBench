
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_subdev {scalar_t__ debug; } ;
struct nvkm_mxm {struct nvkm_subdev subdev; } ;


 scalar_t__ NV_DBG_DEBUG ;
 int ROM32 (int) ;
 int* mxms_data (struct nvkm_mxm*) ;
 int mxms_headerlen (struct nvkm_mxm*) ;
 int mxms_structlen (struct nvkm_mxm*) ;
 int mxms_version (struct nvkm_mxm*) ;
 int nvkm_debug (struct nvkm_subdev*,char*,...) ;
 int sprintf (char*,char*,int) ;

bool
mxms_foreach(struct nvkm_mxm *mxm, u8 types,
      bool (*exec)(struct nvkm_mxm *, u8 *, void *), void *info)
{
 struct nvkm_subdev *subdev = &mxm->subdev;
 u8 *mxms = mxms_data(mxm);
 u8 *desc = mxms + mxms_headerlen(mxm);
 u8 *fini = desc + mxms_structlen(mxm) - 1;
 while (desc < fini) {
  u8 type = desc[0] & 0x0f;
  u8 headerlen = 0;
  u8 recordlen = 0;
  u8 entries = 0;

  switch (type) {
  case 0:
   if (mxms_version(mxm) >= 0x0300)
    headerlen = 8;
   else
    headerlen = 6;
   break;
  case 1:
  case 2:
  case 3:
   headerlen = 4;
   break;
  case 4:
   headerlen = 4;
   recordlen = 2;
   entries = (ROM32(desc[0]) & 0x01f00000) >> 20;
   break;
  case 5:
   headerlen = 8;
   break;
  case 6:
   if (mxms_version(mxm) >= 0x0300) {
    headerlen = 4;
    recordlen = 8;
    entries = (desc[1] & 0xf0) >> 4;
   } else {
    headerlen = 8;
   }
   break;
  case 7:
   headerlen = 8;
   recordlen = 4;
   entries = desc[1] & 0x07;
   break;
  default:
   nvkm_debug(subdev, "unknown descriptor type %d\n", type);
   return 0;
  }

  if (mxm->subdev.debug >= NV_DBG_DEBUG && (exec == ((void*)0))) {
   static const char * mxms_desc[] = {
    "ODS", "SCCS", "TS", "IPS",
    "GSD", "VSS", "BCS", "FCS",
   };
   u8 *dump = desc;
   char data[32], *ptr;
   int i, j;

   for (j = headerlen - 1, ptr = data; j >= 0; j--)
    ptr += sprintf(ptr, "%02x", dump[j]);
   dump += headerlen;

   nvkm_debug(subdev, "%4s: %s\n", mxms_desc[type], data);
   for (i = 0; i < entries; i++, dump += recordlen) {
    for (j = recordlen - 1, ptr = data; j >= 0; j--)
     ptr += sprintf(ptr, "%02x", dump[j]);
    nvkm_debug(subdev, "      %s\n", data);
   }
  }

  if (types & (1 << type)) {
   if (!exec(mxm, desc, info))
    return 0;
  }

  desc += headerlen + (entries * recordlen);
 }

 return 1;
}
