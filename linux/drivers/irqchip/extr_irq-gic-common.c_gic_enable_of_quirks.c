
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gic_quirk {scalar_t__ desc; scalar_t__ (* init ) (void*) ;int compatible; } ;
struct device_node {int dummy; } ;


 int of_device_is_compatible (struct device_node const*,int ) ;
 int pr_info (char*,scalar_t__) ;
 scalar_t__ stub1 (void*) ;

void gic_enable_of_quirks(const struct device_node *np,
     const struct gic_quirk *quirks, void *data)
{
 for (; quirks->desc; quirks++) {
  if (!of_device_is_compatible(np, quirks->compatible))
   continue;
  if (quirks->init(data))
   pr_info("GIC: enabling workaround for %s\n",
    quirks->desc);
 }
}
