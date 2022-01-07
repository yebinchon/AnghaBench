
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct cache_set {int dummy; } ;
struct bkey {int dummy; } ;
struct TYPE_2__ {int gen; } ;


 TYPE_1__* PTR_BUCKET (struct cache_set*,struct bkey const*,unsigned int) ;
 int PTR_GEN (struct bkey const*,unsigned int) ;
 int gen_after (int ,int ) ;

__attribute__((used)) static inline uint8_t ptr_stale(struct cache_set *c, const struct bkey *k,
    unsigned int i)
{
 return gen_after(PTR_BUCKET(c, k, i)->gen, PTR_GEN(k, i));
}
