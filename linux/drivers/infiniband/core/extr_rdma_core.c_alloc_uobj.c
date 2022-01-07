
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uverbs_api_object {TYPE_1__* type_attrs; } ;
struct ib_uverbs_file {int dummy; } ;
struct ib_uobject {int ref; int usecnt; struct uverbs_api_object const* uapi_object; int list; struct ib_ucontext* context; struct ib_uverbs_file* ufile; } ;
struct ib_ucontext {int dummy; } ;
struct TYPE_2__ {int obj_size; } ;


 int ENOMEM ;
 struct ib_uobject* ERR_CAST (struct ib_ucontext*) ;
 struct ib_uobject* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct ib_ucontext*) ;
 int atomic_set (int *,int) ;
 struct ib_ucontext* ib_uverbs_get_ucontext_file (struct ib_uverbs_file*) ;
 int kref_init (int *) ;
 struct ib_uobject* kzalloc (int ,int ) ;

__attribute__((used)) static struct ib_uobject *alloc_uobj(struct ib_uverbs_file *ufile,
         const struct uverbs_api_object *obj)
{
 struct ib_uobject *uobj;
 struct ib_ucontext *ucontext;

 ucontext = ib_uverbs_get_ucontext_file(ufile);
 if (IS_ERR(ucontext))
  return ERR_CAST(ucontext);

 uobj = kzalloc(obj->type_attrs->obj_size, GFP_KERNEL);
 if (!uobj)
  return ERR_PTR(-ENOMEM);




 uobj->ufile = ufile;
 uobj->context = ucontext;
 INIT_LIST_HEAD(&uobj->list);
 uobj->uapi_object = obj;





 atomic_set(&uobj->usecnt, -1);
 kref_init(&uobj->ref);

 return uobj;
}
