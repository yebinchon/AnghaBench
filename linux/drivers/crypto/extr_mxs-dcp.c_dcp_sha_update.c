
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int dcp_sha_update_fx (struct ahash_request*,int ) ;

__attribute__((used)) static int dcp_sha_update(struct ahash_request *req)
{
 return dcp_sha_update_fx(req, 0);
}
