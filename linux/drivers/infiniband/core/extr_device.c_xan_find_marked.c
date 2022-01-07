
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xa_mark_t ;
struct xarray {int dummy; } ;
struct TYPE_5__ {unsigned long xa_index; } ;


 int ENOENT ;
 int ULONG_MAX ;
 void* XA_ERROR (int ) ;
 int XA_STATE (TYPE_1__,struct xarray*,unsigned long) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ xa_is_zero (void*) ;
 TYPE_1__ xas ;
 void* xas_find_marked (TYPE_1__*,int ,int ) ;
 scalar_t__ xas_retry (TYPE_1__*,void*) ;

__attribute__((used)) static void *xan_find_marked(struct xarray *xa, unsigned long *indexp,
        xa_mark_t filter)
{
 XA_STATE(xas, xa, *indexp);
 void *entry;

 rcu_read_lock();
 do {
  entry = xas_find_marked(&xas, ULONG_MAX, filter);
  if (xa_is_zero(entry))
   break;
 } while (xas_retry(&xas, entry));
 rcu_read_unlock();

 if (entry) {
  *indexp = xas.xa_index;
  if (xa_is_zero(entry))
   return ((void*)0);
  return entry;
 }
 return XA_ERROR(-ENOENT);
}
