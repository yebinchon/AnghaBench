
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int assoclen; } ;



__attribute__((used)) static inline bool valid_assoclen(struct aead_request *req)
{
 return ((req->assoclen == 16) || (req->assoclen == 20));
}
