
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_hmac_key {int dummy; } ;


 int memset (struct atmel_sha_hmac_key*,int ,int) ;

__attribute__((used)) static inline void atmel_sha_hmac_key_init(struct atmel_sha_hmac_key *hkey)
{
 memset(hkey, 0, sizeof(*hkey));
}
