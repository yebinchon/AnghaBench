
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_request {int req_base; int (* cb ) (struct sec_bd_info*,int ) ;} ;
struct sec_bd_info {int dummy; } ;


 int stub1 (struct sec_bd_info*,int ) ;

void sec_alg_callback(struct sec_bd_info *resp, void *shadow)
{
 struct sec_request *sec_req = shadow;

 sec_req->cb(resp, sec_req->req_base);
}
