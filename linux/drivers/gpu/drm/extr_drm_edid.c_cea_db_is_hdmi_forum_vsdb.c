
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned int HDMI_FORUM_IEEE_OUI ;
 scalar_t__ VENDOR_BLOCK ;
 int cea_db_payload_len (int const*) ;
 scalar_t__ cea_db_tag (int const*) ;

__attribute__((used)) static bool cea_db_is_hdmi_forum_vsdb(const u8 *db)
{
 unsigned int oui;

 if (cea_db_tag(db) != VENDOR_BLOCK)
  return 0;

 if (cea_db_payload_len(db) < 7)
  return 0;

 oui = db[3] << 16 | db[2] << 8 | db[1];

 return oui == HDMI_FORUM_IEEE_OUI;
}
