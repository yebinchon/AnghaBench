
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct edid_quirk {scalar_t__ product_id; int quirks; int vendor; } ;
struct edid {int dummy; } ;


 int ARRAY_SIZE (struct edid_quirk*) ;
 scalar_t__ EDID_PRODUCT_ID (struct edid const*) ;
 struct edid_quirk* edid_quirk_list ;
 scalar_t__ edid_vendor (struct edid const*,int ) ;

__attribute__((used)) static u32 edid_get_quirks(const struct edid *edid)
{
 const struct edid_quirk *quirk;
 int i;

 for (i = 0; i < ARRAY_SIZE(edid_quirk_list); i++) {
  quirk = &edid_quirk_list[i];

  if (edid_vendor(edid, quirk->vendor) &&
      (EDID_PRODUCT_ID(edid) == quirk->product_id))
   return quirk->quirks;
 }

 return 0;
}
