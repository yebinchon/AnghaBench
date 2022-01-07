
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct artpec6_crypto_walk {scalar_t__ offset; TYPE_1__* sg; } ;
struct TYPE_2__ {scalar_t__ length; } ;


 int WARN_ON (int) ;

__attribute__((used)) static size_t
artpec6_crypto_walk_chunklen(const struct artpec6_crypto_walk *awalk)
{
 WARN_ON(awalk->sg->length == awalk->offset);

 return awalk->sg->length - awalk->offset;
}
