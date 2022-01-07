
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct greybus_bundle_id {scalar_t__ driver_info; scalar_t__ class; scalar_t__ product; scalar_t__ vendor; } ;
struct gb_bundle {int dummy; } ;


 scalar_t__ greybus_match_one_id (struct gb_bundle*,struct greybus_bundle_id const*) ;

__attribute__((used)) static const struct greybus_bundle_id *
greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
{
 if (!id)
  return ((void*)0);

 for (; id->vendor || id->product || id->class || id->driver_info;
         id++) {
  if (greybus_match_one_id(bundle, id))
   return id;
 }

 return ((void*)0);
}
