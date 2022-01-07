
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_api_object {int dummy; } ;
struct ib_uverbs_file {int dummy; } ;
struct ib_uobject {int id; struct ib_uverbs_file* ufile; } ;


 struct ib_uobject* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct ib_uobject*) ;
 int O_CLOEXEC ;
 struct ib_uobject* alloc_uobj (struct ib_uverbs_file*,struct uverbs_api_object const*) ;
 int get_unused_fd_flags (int ) ;
 int put_unused_fd (int) ;

__attribute__((used)) static struct ib_uobject *
alloc_begin_fd_uobject(const struct uverbs_api_object *obj,
         struct ib_uverbs_file *ufile)
{
 int new_fd;
 struct ib_uobject *uobj;

 new_fd = get_unused_fd_flags(O_CLOEXEC);
 if (new_fd < 0)
  return ERR_PTR(new_fd);

 uobj = alloc_uobj(ufile, obj);
 if (IS_ERR(uobj)) {
  put_unused_fd(new_fd);
  return uobj;
 }

 uobj->id = new_fd;
 uobj->ufile = ufile;

 return uobj;
}
