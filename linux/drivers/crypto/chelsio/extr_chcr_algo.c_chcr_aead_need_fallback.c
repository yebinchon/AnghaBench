
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {unsigned int cryptlen; int assoclen; } ;


 int MAX_DSGL_ENT ;
 int SGE_MAX_WR_LEN ;
 unsigned int crypto_aead_authsize (int ) ;
 int crypto_aead_reqtfm (struct aead_request*) ;

__attribute__((used)) static int chcr_aead_need_fallback(struct aead_request *req, int dst_nents,
       int aadmax, int wrlen,
       unsigned short op_type)
{
 unsigned int authsize = crypto_aead_authsize(crypto_aead_reqtfm(req));

 if (((req->cryptlen - (op_type ? authsize : 0)) == 0) ||
     dst_nents > MAX_DSGL_ENT ||
     (req->assoclen > aadmax) ||
     (wrlen > SGE_MAX_WR_LEN))
  return 1;
 return 0;
}
