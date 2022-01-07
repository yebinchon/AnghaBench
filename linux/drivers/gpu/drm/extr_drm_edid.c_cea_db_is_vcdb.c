
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ EXT_VIDEO_CAPABILITY_BLOCK ;
 scalar_t__ USE_EXTENDED_TAG ;
 scalar_t__ cea_db_extended_tag (int const*) ;
 int cea_db_payload_len (int const*) ;
 scalar_t__ cea_db_tag (int const*) ;

__attribute__((used)) static bool cea_db_is_vcdb(const u8 *db)
{
 if (cea_db_tag(db) != USE_EXTENDED_TAG)
  return 0;

 if (cea_db_payload_len(db) != 2)
  return 0;

 if (cea_db_extended_tag(db) != EXT_VIDEO_CAPABILITY_BLOCK)
  return 0;

 return 1;
}
