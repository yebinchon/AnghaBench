
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uverbs_req_iter {scalar_t__ end; scalar_t__ cur; } ;
struct TYPE_2__ {size_t inlen; scalar_t__ inbuf; } ;
struct uverbs_attr_bundle {TYPE_1__ ucore; } ;


 int EFAULT ;
 int ENOSPC ;
 scalar_t__ copy_from_user (void*,scalar_t__,size_t) ;

__attribute__((used)) static int uverbs_request_start(struct uverbs_attr_bundle *attrs,
    struct uverbs_req_iter *iter,
    void *req,
    size_t req_len)
{
 if (attrs->ucore.inlen < req_len)
  return -ENOSPC;

 if (copy_from_user(req, attrs->ucore.inbuf, req_len))
  return -EFAULT;

 iter->cur = attrs->ucore.inbuf + req_len;
 iter->end = attrs->ucore.inbuf + attrs->ucore.inlen;
 return 0;
}
