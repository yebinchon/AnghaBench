
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gic_quirk {int iidr; int mask; scalar_t__ desc; scalar_t__ (* init ) (void*) ;scalar_t__ compatible; } ;


 int pr_info (char*,scalar_t__) ;
 scalar_t__ stub1 (void*) ;

void gic_enable_quirks(u32 iidr, const struct gic_quirk *quirks,
  void *data)
{
 for (; quirks->desc; quirks++) {
  if (quirks->compatible)
   continue;
  if (quirks->iidr != (quirks->mask & iidr))
   continue;
  if (quirks->init(data))
   pr_info("GIC: enabling workaround for %s\n",
    quirks->desc);
 }
}
