
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {struct dm_origin* private; } ;
struct dm_origin {TYPE_1__* dev; } ;
typedef int status_type_t ;
struct TYPE_2__ {char* name; } ;




 int snprintf (char*,unsigned int,char*,char*) ;

__attribute__((used)) static void origin_status(struct dm_target *ti, status_type_t type,
     unsigned status_flags, char *result, unsigned maxlen)
{
 struct dm_origin *o = ti->private;

 switch (type) {
 case 129:
  result[0] = '\0';
  break;

 case 128:
  snprintf(result, maxlen, "%s", o->dev->name);
  break;
 }
}
