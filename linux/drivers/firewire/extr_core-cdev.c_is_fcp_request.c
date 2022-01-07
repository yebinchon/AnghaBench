
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_request {int dummy; } ;



__attribute__((used)) static inline bool is_fcp_request(struct fw_request *request)
{
 return request == ((void*)0);
}
