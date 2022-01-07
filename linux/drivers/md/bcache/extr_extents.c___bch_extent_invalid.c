
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int dummy; } ;
struct bkey {int dummy; } ;
typedef int buf ;


 scalar_t__ KEY_OFFSET (struct bkey const*) ;
 scalar_t__ KEY_SIZE (struct bkey const*) ;
 scalar_t__ __ptr_invalid (struct cache_set*,struct bkey const*) ;
 int bch_extent_to_text (char*,int,struct bkey const*) ;
 int bch_ptr_status (struct cache_set*,struct bkey const*) ;
 int cache_bug (struct cache_set*,char*,char*,int ) ;

bool __bch_extent_invalid(struct cache_set *c, const struct bkey *k)
{
 char buf[80];

 if (!KEY_SIZE(k))
  return 1;

 if (KEY_SIZE(k) > KEY_OFFSET(k))
  goto bad;

 if (__ptr_invalid(c, k))
  goto bad;

 return 0;
bad:
 bch_extent_to_text(buf, sizeof(buf), k);
 cache_bug(c, "spotted extent %s: %s", buf, bch_ptr_status(c, k));
 return 1;
}
