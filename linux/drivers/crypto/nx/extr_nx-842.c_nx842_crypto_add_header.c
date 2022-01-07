
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nx842_crypto_header {TYPE_1__* group; int groups; } ;
struct TYPE_2__ {int padding; } ;


 int DUMP_PREFIX_OFFSET ;
 int EINVAL ;
 int NX842_CRYPTO_HEADER_SIZE (int ) ;
 int be16_to_cpu (int ) ;
 int memcpy (int *,struct nx842_crypto_header*,int) ;
 int pr_err (char*) ;
 int print_hex_dump_debug (char*,int ,int,int,int *,int,int ) ;

__attribute__((used)) static int nx842_crypto_add_header(struct nx842_crypto_header *hdr, u8 *buf)
{
 int s = NX842_CRYPTO_HEADER_SIZE(hdr->groups);


 if (s > be16_to_cpu(hdr->group[0].padding)) {
  pr_err("Internal error: no space for header\n");
  return -EINVAL;
 }

 memcpy(buf, hdr, s);

 print_hex_dump_debug("header ", DUMP_PREFIX_OFFSET, 16, 1, buf, s, 0);

 return 0;
}
