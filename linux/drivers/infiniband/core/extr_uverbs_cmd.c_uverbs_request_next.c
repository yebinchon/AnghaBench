
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_req_iter {scalar_t__ cur; scalar_t__ end; } ;


 int EFAULT ;
 int ENOSPC ;
 scalar_t__ copy_from_user (void*,scalar_t__,size_t) ;

__attribute__((used)) static int uverbs_request_next(struct uverbs_req_iter *iter, void *val,
          size_t len)
{
 if (iter->cur + len > iter->end)
  return -ENOSPC;

 if (copy_from_user(val, iter->cur, len))
  return -EFAULT;

 iter->cur += len;
 return 0;
}
