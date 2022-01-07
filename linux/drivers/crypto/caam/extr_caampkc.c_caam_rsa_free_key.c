
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct caam_rsa_key {int n; int e; int tmp2; int tmp1; int qinv; int dq; int dp; int q; int p; int d; } ;


 int kfree (int ) ;
 int kzfree (int ) ;
 int memset (struct caam_rsa_key*,int ,int) ;

__attribute__((used)) static void caam_rsa_free_key(struct caam_rsa_key *key)
{
 kzfree(key->d);
 kzfree(key->p);
 kzfree(key->q);
 kzfree(key->dp);
 kzfree(key->dq);
 kzfree(key->qinv);
 kzfree(key->tmp1);
 kzfree(key->tmp2);
 kfree(key->e);
 kfree(key->n);
 memset(key, 0, sizeof(*key));
}
