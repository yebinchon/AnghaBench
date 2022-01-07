
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_selector {int dummy; } ;
struct path_info {int repeat_count; int qlen; } ;
struct dm_path {struct path_info* pscontext; } ;
typedef int status_type_t ;


 int DMEMIT (char*,...) ;


 int atomic_read (int *) ;

__attribute__((used)) static int ql_status(struct path_selector *ps, struct dm_path *path,
       status_type_t type, char *result, unsigned maxlen)
{
 unsigned sz = 0;
 struct path_info *pi;


 if (!path)
  DMEMIT("0 ");
 else {
  pi = path->pscontext;

  switch (type) {
  case 129:
   DMEMIT("%d ", atomic_read(&pi->qlen));
   break;
  case 128:
   DMEMIT("%u ", pi->repeat_count);
   break;
  }
 }

 return sz;
}
