
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree {int keys; int key; } ;
struct bkey {int dummy; } ;


 unsigned int BTREE_INSERT_STATUS_NO_INSERT ;
 int BUG_ON (int) ;
 unsigned int bch_btree_insert_key (int *,struct bkey*,struct bkey*) ;
 int bch_check_keys (int *,char*,unsigned int,char*) ;
 scalar_t__ bkey_cmp (struct bkey*,int *) ;
 int trace_bcache_btree_insert_key (struct btree*,struct bkey*,int ,unsigned int) ;

__attribute__((used)) static bool btree_insert_key(struct btree *b, struct bkey *k,
        struct bkey *replace_key)
{
 unsigned int status;

 BUG_ON(bkey_cmp(k, &b->key) > 0);

 status = bch_btree_insert_key(&b->keys, k, replace_key);
 if (status != BTREE_INSERT_STATUS_NO_INSERT) {
  bch_check_keys(&b->keys, "%u for %s", status,
          replace_key ? "replace" : "insert");

  trace_bcache_btree_insert_key(b, k, replace_key != ((void*)0),
           status);
  return 1;
 } else
  return 0;
}
