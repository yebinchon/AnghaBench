
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx842_crypto_param {unsigned int iremain; unsigned int oremain; unsigned int in; unsigned int out; unsigned int ototal; } ;


 int ENOSPC ;
 int EOVERFLOW ;

__attribute__((used)) static int update_param(struct nx842_crypto_param *p,
   unsigned int slen, unsigned int dlen)
{
 if (p->iremain < slen)
  return -EOVERFLOW;
 if (p->oremain < dlen)
  return -ENOSPC;

 p->in += slen;
 p->iremain -= slen;
 p->out += dlen;
 p->oremain -= dlen;
 p->ototal += dlen;

 return 0;
}
