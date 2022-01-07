
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct log_c {int region_size; int sync; } ;
struct dm_dirty_log {TYPE_1__* type; struct log_c* context; } ;
typedef int status_type_t ;
struct TYPE_2__ {int name; } ;


 int DEFAULTSYNC ;
 int DMEMIT (char*,int ,...) ;
 int DMEMIT_SYNC ;



__attribute__((used)) static int core_status(struct dm_dirty_log *log, status_type_t status,
         char *result, unsigned int maxlen)
{
 int sz = 0;
 struct log_c *lc = log->context;

 switch(status) {
 case 129:
  DMEMIT("1 %s", log->type->name);
  break;

 case 128:
  DMEMIT("%s %u %u ", log->type->name,
         lc->sync == DEFAULTSYNC ? 1 : 2, lc->region_size);
  DMEMIT_SYNC;
 }

 return sz;
}
