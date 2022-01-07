
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {size_t collection_index; int resolution_multiplier; } ;
struct hid_field {int maxusage; struct hid_usage* usage; } ;
struct hid_device {struct hid_collection* collection; } ;
struct hid_collection {int parent_idx; } ;



__attribute__((used)) static void hid_apply_multiplier_to_field(struct hid_device *hid,
       struct hid_field *field,
       struct hid_collection *multiplier_collection,
       int effective_multiplier)
{
 struct hid_collection *collection;
 struct hid_usage *usage;
 int i;







 for (i = 0; i < field->maxusage; i++) {
  usage = &field->usage[i];

  collection = &hid->collection[usage->collection_index];
  while (collection->parent_idx != -1 &&
         collection != multiplier_collection)
   collection = &hid->collection[collection->parent_idx];

  if (collection->parent_idx != -1 ||
      multiplier_collection == ((void*)0))
   usage->resolution_multiplier = effective_multiplier;

 }
}
