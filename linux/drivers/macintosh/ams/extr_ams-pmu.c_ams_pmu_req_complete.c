
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;
struct adb_request {scalar_t__ arg; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void ams_pmu_req_complete(struct adb_request *req)
{
 complete((struct completion *)req->arg);
}
