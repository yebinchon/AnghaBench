
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct greybus_bundle_id {int match_flags; scalar_t__ vendor; scalar_t__ product; scalar_t__ class; } ;
struct gb_bundle {scalar_t__ class; TYPE_1__* intf; } ;
struct TYPE_2__ {scalar_t__ vendor_id; scalar_t__ product_id; } ;


 int GREYBUS_ID_MATCH_CLASS ;
 int GREYBUS_ID_MATCH_PRODUCT ;
 int GREYBUS_ID_MATCH_VENDOR ;

__attribute__((used)) static bool greybus_match_one_id(struct gb_bundle *bundle,
     const struct greybus_bundle_id *id)
{
 if ((id->match_flags & GREYBUS_ID_MATCH_VENDOR) &&
     (id->vendor != bundle->intf->vendor_id))
  return 0;

 if ((id->match_flags & GREYBUS_ID_MATCH_PRODUCT) &&
     (id->product != bundle->intf->product_id))
  return 0;

 if ((id->match_flags & GREYBUS_ID_MATCH_CLASS) &&
     (id->class != bundle->class))
  return 0;

 return 1;
}
