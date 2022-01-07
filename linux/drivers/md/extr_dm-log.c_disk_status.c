
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct log_c {int region_size; TYPE_2__* log_dev; int sync; int log_dev_failed; int log_dev_flush_failed; } ;
struct dm_dirty_log {TYPE_1__* type; struct log_c* context; } ;
typedef int status_type_t ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int name; } ;


 int DEFAULTSYNC ;
 int DMEMIT (char*,int ,int,float,...) ;
 int DMEMIT_SYNC ;



__attribute__((used)) static int disk_status(struct dm_dirty_log *log, status_type_t status,
         char *result, unsigned int maxlen)
{
 int sz = 0;
 struct log_c *lc = log->context;

 switch(status) {
 case 129:
  DMEMIT("3 %s %s %c", log->type->name, lc->log_dev->name,
         lc->log_dev_flush_failed ? 'F' :
         lc->log_dev_failed ? 'D' :
         'A');
  break;

 case 128:
  DMEMIT("%s %u %s %u ", log->type->name,
         lc->sync == DEFAULTSYNC ? 2 : 3, lc->log_dev->name,
         lc->region_size);
  DMEMIT_SYNC;
 }

 return sz;
}
