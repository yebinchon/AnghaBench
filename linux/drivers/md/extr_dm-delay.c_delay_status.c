
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {struct delay_c* private; } ;
struct TYPE_2__ {int ops; } ;
struct delay_c {int argc; TYPE_1__ flush; TYPE_1__ write; TYPE_1__ read; } ;
typedef int status_type_t ;


 int DMEMIT (char*,...) ;
 int DMEMIT_DELAY_CLASS (TYPE_1__*) ;



__attribute__((used)) static void delay_status(struct dm_target *ti, status_type_t type,
    unsigned status_flags, char *result, unsigned maxlen)
{
 struct delay_c *dc = ti->private;
 int sz = 0;

 switch (type) {
 case 129:
  DMEMIT("%u %u %u", dc->read.ops, dc->write.ops, dc->flush.ops);
  break;

 case 128:
  DMEMIT_DELAY_CLASS(&dc->read);
  if (dc->argc >= 6) {
   DMEMIT(" ");
   DMEMIT_DELAY_CLASS(&dc->write);
  }
  if (dc->argc >= 9) {
   DMEMIT(" ");
   DMEMIT_DELAY_CLASS(&dc->flush);
  }
  break;
 }
}
