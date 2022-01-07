
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps_internal {int list; } ;
struct path_selector_type {int name; } ;


 int EEXIST ;
 int ENOMEM ;
 scalar_t__ __find_path_selector_type (int ) ;
 struct ps_internal* _alloc_path_selector (struct path_selector_type*) ;
 int _path_selectors ;
 int _ps_lock ;
 int down_write (int *) ;
 int kfree (struct ps_internal*) ;
 int list_add (int *,int *) ;
 int up_write (int *) ;

int dm_register_path_selector(struct path_selector_type *pst)
{
 int r = 0;
 struct ps_internal *psi = _alloc_path_selector(pst);

 if (!psi)
  return -ENOMEM;

 down_write(&_ps_lock);

 if (__find_path_selector_type(pst->name)) {
  kfree(psi);
  r = -EEXIST;
 } else
  list_add(&psi->list, &_path_selectors);

 up_write(&_ps_lock);

 return r;
}
