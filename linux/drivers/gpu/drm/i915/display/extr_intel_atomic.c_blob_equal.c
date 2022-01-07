
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_property_blob {scalar_t__ length; int data; } ;


 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static bool blob_equal(const struct drm_property_blob *a,
         const struct drm_property_blob *b)
{
 if (a && b)
  return a->length == b->length &&
   !memcmp(a->data, b->data, a->length);

 return !a == !b;
}
