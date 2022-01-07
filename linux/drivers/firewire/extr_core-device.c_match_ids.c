
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee1394_device_id {int vendor_id; int model_id; int specifier_id; int version; int match_flags; } ;


 int IEEE1394_MATCH_MODEL_ID ;
 int IEEE1394_MATCH_SPECIFIER_ID ;
 int IEEE1394_MATCH_VENDOR_ID ;
 int IEEE1394_MATCH_VERSION ;

__attribute__((used)) static bool match_ids(const struct ieee1394_device_id *id_table, int *id)
{
 int match = 0;

 if (id[0] == id_table->vendor_id)
  match |= IEEE1394_MATCH_VENDOR_ID;
 if (id[1] == id_table->model_id)
  match |= IEEE1394_MATCH_MODEL_ID;
 if (id[2] == id_table->specifier_id)
  match |= IEEE1394_MATCH_SPECIFIER_ID;
 if (id[3] == id_table->version)
  match |= IEEE1394_MATCH_VERSION;

 return (match & id_table->match_flags) == id_table->match_flags;
}
