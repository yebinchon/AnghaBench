
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_cm_work {int list; struct siw_cep* cep; } ;
struct siw_cep {int work_freelist; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct siw_cm_work* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int siw_cm_free_work (struct siw_cep*) ;

__attribute__((used)) static int siw_cm_alloc_work(struct siw_cep *cep, int num)
{
 struct siw_cm_work *work;

 while (num--) {
  work = kmalloc(sizeof(*work), GFP_KERNEL);
  if (!work) {
   if (!(list_empty(&cep->work_freelist)))
    siw_cm_free_work(cep);
   return -ENOMEM;
  }
  work->cep = cep;
  INIT_LIST_HEAD(&work->list);
  list_add(&work->list, &cep->work_freelist);
 }
 return 0;
}
