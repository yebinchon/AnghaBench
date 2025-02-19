
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int queue_mode; int pg_init_delay_msecs; int pg_init_retries; int flags; struct dm_target* ti; } ;
struct dm_target {char* error; } ;
struct dm_arg_set {int dummy; } ;
struct dm_arg {int member_0; int member_1; char* member_2; } ;


 int DM_TYPE_BIO_BASED ;
 int DM_TYPE_REQUEST_BASED ;
 int EINVAL ;
 int MPATHF_RETAIN_ATTACHED_HW_HANDLER ;
 int dm_read_arg (struct dm_arg const*,struct dm_arg_set*,int *,char**) ;
 int dm_read_arg_group (struct dm_arg const*,struct dm_arg_set*,unsigned int*,char**) ;
 char* dm_shift_arg (struct dm_arg_set*) ;
 int queue_if_no_path (struct multipath*,int,int) ;
 int set_bit (int ,int *) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int parse_features(struct dm_arg_set *as, struct multipath *m)
{
 int r;
 unsigned argc;
 struct dm_target *ti = m->ti;
 const char *arg_name;

 static const struct dm_arg _args[] = {
  {0, 8, "invalid number of feature args"},
  {1, 50, "pg_init_retries must be between 1 and 50"},
  {0, 60000, "pg_init_delay_msecs must be between 0 and 60000"},
 };

 r = dm_read_arg_group(_args, as, &argc, &ti->error);
 if (r)
  return -EINVAL;

 if (!argc)
  return 0;

 do {
  arg_name = dm_shift_arg(as);
  argc--;

  if (!strcasecmp(arg_name, "queue_if_no_path")) {
   r = queue_if_no_path(m, 1, 0);
   continue;
  }

  if (!strcasecmp(arg_name, "retain_attached_hw_handler")) {
   set_bit(MPATHF_RETAIN_ATTACHED_HW_HANDLER, &m->flags);
   continue;
  }

  if (!strcasecmp(arg_name, "pg_init_retries") &&
      (argc >= 1)) {
   r = dm_read_arg(_args + 1, as, &m->pg_init_retries, &ti->error);
   argc--;
   continue;
  }

  if (!strcasecmp(arg_name, "pg_init_delay_msecs") &&
      (argc >= 1)) {
   r = dm_read_arg(_args + 2, as, &m->pg_init_delay_msecs, &ti->error);
   argc--;
   continue;
  }

  if (!strcasecmp(arg_name, "queue_mode") &&
      (argc >= 1)) {
   const char *queue_mode_name = dm_shift_arg(as);

   if (!strcasecmp(queue_mode_name, "bio"))
    m->queue_mode = DM_TYPE_BIO_BASED;
   else if (!strcasecmp(queue_mode_name, "rq") ||
     !strcasecmp(queue_mode_name, "mq"))
    m->queue_mode = DM_TYPE_REQUEST_BASED;
   else {
    ti->error = "Unknown 'queue_mode' requested";
    r = -EINVAL;
   }
   argc--;
   continue;
  }

  ti->error = "Unrecognised multipath feature request";
  r = -EINVAL;
 } while (argc && !r);

 return r;
}
