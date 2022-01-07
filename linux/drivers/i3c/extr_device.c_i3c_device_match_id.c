
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct i3c_device_info {scalar_t__ dcr; int pid; } ;
struct i3c_device_id {int match_flags; scalar_t__ manuf_id; scalar_t__ part_id; scalar_t__ extra_info; scalar_t__ dcr; } ;
struct i3c_device {int dummy; } ;


 int I3C_MATCH_DCR ;
 int I3C_MATCH_EXTRA_INFO ;
 int I3C_MATCH_MANUF_AND_PART ;
 scalar_t__ I3C_PID_EXTRA_INFO (int ) ;
 scalar_t__ I3C_PID_MANUF_ID (int ) ;
 scalar_t__ I3C_PID_PART_ID (int ) ;
 int I3C_PID_RND_LOWER_32BITS (int ) ;
 int i3c_device_get_info (struct i3c_device*,struct i3c_device_info*) ;

const struct i3c_device_id *
i3c_device_match_id(struct i3c_device *i3cdev,
      const struct i3c_device_id *id_table)
{
 struct i3c_device_info devinfo;
 const struct i3c_device_id *id;

 i3c_device_get_info(i3cdev, &devinfo);





 if (!I3C_PID_RND_LOWER_32BITS(devinfo.pid)) {
  u16 manuf = I3C_PID_MANUF_ID(devinfo.pid);
  u16 part = I3C_PID_PART_ID(devinfo.pid);
  u16 ext_info = I3C_PID_EXTRA_INFO(devinfo.pid);


  for (id = id_table; id->match_flags != 0; id++) {
   if ((id->match_flags & I3C_MATCH_MANUF_AND_PART) !=
       I3C_MATCH_MANUF_AND_PART)
    continue;

   if (manuf != id->manuf_id || part != id->part_id)
    continue;

   if ((id->match_flags & I3C_MATCH_EXTRA_INFO) &&
       ext_info != id->extra_info)
    continue;

   return id;
  }
 }


 for (id = id_table; id->match_flags != 0; id++) {
  if ((id->match_flags & I3C_MATCH_DCR) &&
      id->dcr == devinfo.dcr)
   return id;
 }

 return ((void*)0);
}
