
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtattr {int rta_type; int rta_len; } ;
struct crypto_authenc_key_param {int enckeylen; } ;


 int CRYPTO_AUTHENC_KEYA_PARAM ;
 struct crypto_authenc_key_param* RTA_DATA (struct rtattr*) ;
 int RTA_LENGTH (int) ;
 int RTA_SPACE (int) ;
 int cpu_to_be32 (unsigned int) ;
 int memcpy (char*,void const*,unsigned int) ;

__attribute__((used)) static void crypt_copy_authenckey(char *p, const void *key,
      unsigned enckeylen, unsigned authkeylen)
{
 struct crypto_authenc_key_param *param;
 struct rtattr *rta;

 rta = (struct rtattr *)p;
 param = RTA_DATA(rta);
 param->enckeylen = cpu_to_be32(enckeylen);
 rta->rta_len = RTA_LENGTH(sizeof(*param));
 rta->rta_type = CRYPTO_AUTHENC_KEYA_PARAM;
 p += RTA_SPACE(sizeof(*param));
 memcpy(p, key + enckeylen, authkeylen);
 p += authkeylen;
 memcpy(p, key, enckeylen);
}
