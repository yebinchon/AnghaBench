
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_selector {int dummy; } ;
struct path_info {int repeat_count; } ;
struct dm_path {struct path_info* pscontext; } ;
typedef int status_type_t ;


 int DMEMIT (char*,...) ;



__attribute__((used)) static int rr_status(struct path_selector *ps, struct dm_path *path,
       status_type_t type, char *result, unsigned int maxlen)
{
 struct path_info *pi;
 int sz = 0;

 if (!path)
  DMEMIT("0 ");
 else {
  switch(type) {
  case 129:
   break;
  case 128:
   pi = path->pscontext;
   DMEMIT("%u ", pi->repeat_count);
   break;
  }
 }

 return sz;
}
