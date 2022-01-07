
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int
cea_db_payload_len(const u8 *db)
{
 return db[0] & 0x1f;
}
