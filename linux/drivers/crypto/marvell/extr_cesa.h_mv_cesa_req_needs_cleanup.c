
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {int dummy; } ;


 int EBUSY ;
 int EINPROGRESS ;

__attribute__((used)) static inline int mv_cesa_req_needs_cleanup(struct crypto_async_request *req,
         int ret)
{




 if (ret == -EINPROGRESS)
  return 0;







 if (ret == -EBUSY)
  return 0;


 return 1;
}
