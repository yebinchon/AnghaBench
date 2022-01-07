
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception_store {int dummy; } ;
struct dm_exception {int dummy; } ;



__attribute__((used)) static void transient_commit_exception(struct dm_exception_store *store,
           struct dm_exception *e, int valid,
           void (*callback) (void *, int success),
           void *callback_context)
{

 callback(callback_context, valid);
}
