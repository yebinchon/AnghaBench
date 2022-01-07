
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int HDMI_IEEE_OUI ;
 scalar_t__ VENDOR_BLOCK ;
 int cea_db_payload_len (int const*) ;
 scalar_t__ cea_db_tag (int const*) ;

__attribute__((used)) static bool cea_db_is_hdmi_vsdb(const u8 *db)
{
 int hdmi_id;

 if (cea_db_tag(db) != VENDOR_BLOCK)
  return 0;

 if (cea_db_payload_len(db) < 5)
  return 0;

 hdmi_id = db[1] | (db[2] << 8) | (db[3] << 16);

 return hdmi_id == HDMI_IEEE_OUI;
}
