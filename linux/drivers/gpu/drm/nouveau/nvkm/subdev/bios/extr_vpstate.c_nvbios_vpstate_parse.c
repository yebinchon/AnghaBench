
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_bios {int dummy; } ;
struct nvbios_vpstate_header {int version; int hlen; int boost_id; int tdp_id; scalar_t__ offset; void* base_id; void* ecount; void* scount; void* slen; void* elen; } ;


 int EINVAL ;
 int ENODEV ;
 void* nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 scalar_t__ nvbios_vpstate_offset (struct nvkm_bios*) ;

int
nvbios_vpstate_parse(struct nvkm_bios *b, struct nvbios_vpstate_header *h)
{
 if (!h)
  return -EINVAL;

 h->offset = nvbios_vpstate_offset(b);
 if (!h->offset)
  return -ENODEV;

 h->version = nvbios_rd08(b, h->offset);
 switch (h->version) {
 case 0x10:
  h->hlen = nvbios_rd08(b, h->offset + 0x1);
  h->elen = nvbios_rd08(b, h->offset + 0x2);
  h->slen = nvbios_rd08(b, h->offset + 0x3);
  h->scount = nvbios_rd08(b, h->offset + 0x4);
  h->ecount = nvbios_rd08(b, h->offset + 0x5);

  h->base_id = nvbios_rd08(b, h->offset + 0x0f);
  if (h->hlen > 0x10)
   h->boost_id = nvbios_rd08(b, h->offset + 0x10);
  else
   h->boost_id = 0xff;
  if (h->hlen > 0x11)
   h->tdp_id = nvbios_rd08(b, h->offset + 0x11);
  else
   h->tdp_id = 0xff;
  return 0;
 default:
  return -EINVAL;
 }
}
