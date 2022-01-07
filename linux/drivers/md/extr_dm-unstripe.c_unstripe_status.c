
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unstripe_c {scalar_t__ physical_start; TYPE_1__* dev; int unstripe; scalar_t__ chunk_size; int stripes; } ;
struct dm_target {struct unstripe_c* private; } ;
typedef int status_type_t ;
struct TYPE_2__ {int name; } ;


 int DMEMIT (char*,int ,unsigned long long,int ,int ,unsigned long long) ;



__attribute__((used)) static void unstripe_status(struct dm_target *ti, status_type_t type,
       unsigned int status_flags, char *result, unsigned int maxlen)
{
 struct unstripe_c *uc = ti->private;
 unsigned int sz = 0;

 switch (type) {
 case 129:
  break;

 case 128:
  DMEMIT("%d %llu %d %s %llu",
         uc->stripes, (unsigned long long)uc->chunk_size, uc->unstripe,
         uc->dev->name, (unsigned long long)uc->physical_start);
  break;
 }
}
