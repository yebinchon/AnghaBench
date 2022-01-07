
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dust_device {int blksz; scalar_t__ start; TYPE_1__* dev; int quiet_mode; int fail_read_on_bb; } ;
struct dm_target {struct dust_device* private; } ;
typedef int status_type_t ;
struct TYPE_2__ {int name; } ;


 int DMEMIT (char*,int ,...) ;



__attribute__((used)) static void dust_status(struct dm_target *ti, status_type_t type,
   unsigned int status_flags, char *result, unsigned int maxlen)
{
 struct dust_device *dd = ti->private;
 unsigned int sz = 0;

 switch (type) {
 case 129:
  DMEMIT("%s %s %s", dd->dev->name,
         dd->fail_read_on_bb ? "fail_read_on_bad_block" : "bypass",
         dd->quiet_mode ? "quiet" : "verbose");
  break;

 case 128:
  DMEMIT("%s %llu %u", dd->dev->name,
         (unsigned long long)dd->start, dd->blksz);
  break;
 }
}
