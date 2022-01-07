
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flakey_c {scalar_t__ corrupt_bio_rw; int flags; int corrupt_bio_flags; int corrupt_bio_value; int corrupt_bio_byte; } ;
struct dm_target {char* error; } ;
struct dm_arg_set {int argc; } ;
struct dm_arg {int member_0; int member_1; char* member_2; } ;


 int DROP_WRITES ;
 int EINVAL ;
 int ERROR_WRITES ;
 scalar_t__ READ ;

 scalar_t__ WRITE ;
 int dm_read_arg (struct dm_arg const*,struct dm_arg_set*,int *,char**) ;
 int dm_read_arg_group (struct dm_arg const*,struct dm_arg_set*,unsigned int*,char**) ;
 char* dm_shift_arg (struct dm_arg_set*) ;
 int strcasecmp (char const*,char*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int parse_features(struct dm_arg_set *as, struct flakey_c *fc,
     struct dm_target *ti)
{
 int r;
 unsigned argc;
 const char *arg_name;

 static const struct dm_arg _args[] = {
  {0, 6, "Invalid number of feature args"},
  {1, 128, "Invalid corrupt bio byte"},
  {0, 255, "Invalid corrupt value to write into bio byte (0-255)"},
  {0, 128, "Invalid corrupt bio flags mask"},
 };


 if (!as->argc)
  return 0;

 r = dm_read_arg_group(_args, as, &argc, &ti->error);
 if (r)
  return r;

 while (argc) {
  arg_name = dm_shift_arg(as);
  argc--;

  if (!arg_name) {
   ti->error = "Insufficient feature arguments";
   return -EINVAL;
  }




  if (!strcasecmp(arg_name, "drop_writes")) {
   if (test_and_set_bit(DROP_WRITES, &fc->flags)) {
    ti->error = "Feature drop_writes duplicated";
    return -EINVAL;
   } else if (test_bit(ERROR_WRITES, &fc->flags)) {
    ti->error = "Feature drop_writes conflicts with feature error_writes";
    return -EINVAL;
   }

   continue;
  }




  if (!strcasecmp(arg_name, "error_writes")) {
   if (test_and_set_bit(ERROR_WRITES, &fc->flags)) {
    ti->error = "Feature error_writes duplicated";
    return -EINVAL;

   } else if (test_bit(DROP_WRITES, &fc->flags)) {
    ti->error = "Feature error_writes conflicts with feature drop_writes";
    return -EINVAL;
   }

   continue;
  }




  if (!strcasecmp(arg_name, "corrupt_bio_byte")) {
   if (!argc) {
    ti->error = "Feature corrupt_bio_byte requires parameters";
    return -EINVAL;
   }

   r = dm_read_arg(_args + 1, as, &fc->corrupt_bio_byte, &ti->error);
   if (r)
    return r;
   argc--;




   arg_name = dm_shift_arg(as);
   if (!strcasecmp(arg_name, "w"))
    fc->corrupt_bio_rw = WRITE;
   else if (!strcasecmp(arg_name, "r"))
    fc->corrupt_bio_rw = READ;
   else {
    ti->error = "Invalid corrupt bio direction (r or w)";
    return -EINVAL;
   }
   argc--;




   r = dm_read_arg(_args + 2, as, &fc->corrupt_bio_value, &ti->error);
   if (r)
    return r;
   argc--;




   r = dm_read_arg(_args + 3, as, &fc->corrupt_bio_flags, &ti->error);
   if (r)
    return r;
   argc--;

   continue;
  }

  ti->error = "Unrecognised flakey feature requested";
  return -EINVAL;
 }

 if (test_bit(DROP_WRITES, &fc->flags) && (fc->corrupt_bio_rw == WRITE)) {
  ti->error = "drop_writes is incompatible with corrupt_bio_byte with the WRITE flag set";
  return -EINVAL;

 } else if (test_bit(ERROR_WRITES, &fc->flags) && (fc->corrupt_bio_rw == WRITE)) {
  ti->error = "error_writes is incompatible with corrupt_bio_byte with the WRITE flag set";
  return -EINVAL;
 }

 return 0;
}
