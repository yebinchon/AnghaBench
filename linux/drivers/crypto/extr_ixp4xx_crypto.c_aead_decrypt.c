
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int iv; int cryptlen; int assoclen; } ;


 int aead_perform (struct aead_request*,int ,int ,int ,int ) ;

__attribute__((used)) static int aead_decrypt(struct aead_request *req)
{
 return aead_perform(req, 0, req->assoclen, req->cryptlen, req->iv);
}
