
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct log_c {int integrated_flush; int uuid; int usr_argc; int usr_argv_str; } ;
struct dm_dirty_log {TYPE_1__* type; struct log_c* context; } ;
typedef int status_type_t ;
struct TYPE_2__ {char* name; } ;


 int BUG_ON (int) ;
 int DMEMIT (char*,...) ;
 int DM_ULOG_STATUS_INFO ;


 char* strchr (int ,char) ;
 int userspace_do_request (struct log_c*,int ,int ,int *,int ,char*,size_t*) ;

__attribute__((used)) static int userspace_status(struct dm_dirty_log *log, status_type_t status_type,
       char *result, unsigned maxlen)
{
 int r = 0;
 char *table_args;
 size_t sz = (size_t)maxlen;
 struct log_c *lc = log->context;

 switch (status_type) {
 case 129:
  r = userspace_do_request(lc, lc->uuid, DM_ULOG_STATUS_INFO,
      ((void*)0), 0, result, &sz);

  if (r) {
   sz = 0;
   DMEMIT("%s 1 COM_FAILURE", log->type->name);
  }
  break;
 case 128:
  sz = 0;
  table_args = strchr(lc->usr_argv_str, ' ');
  BUG_ON(!table_args);
  table_args++;

  DMEMIT("%s %u %s ", log->type->name, lc->usr_argc, lc->uuid);
  if (lc->integrated_flush)
   DMEMIT("integrated_flush ");
  DMEMIT("%s ", table_args);
  break;
 }
 return (r) ? 0 : (int)sz;
}
