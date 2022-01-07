
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct safexcel_ahash_req {scalar_t__ processed; scalar_t__ len; } ;



__attribute__((used)) static inline u64 safexcel_queued_len(struct safexcel_ahash_req *req)
{
 return req->len - req->processed;
}
