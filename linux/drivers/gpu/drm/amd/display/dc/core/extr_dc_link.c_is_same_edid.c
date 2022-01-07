
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_edid {scalar_t__ length; int raw_edid; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static bool is_same_edid(struct dc_edid *old_edid, struct dc_edid *new_edid)
{
 if (old_edid->length != new_edid->length)
  return 0;

 if (new_edid->length == 0)
  return 0;

 return (memcmp(old_edid->raw_edid, new_edid->raw_edid, new_edid->length) == 0);
}
