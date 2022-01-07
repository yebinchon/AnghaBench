
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keybuf_key {int key; } ;


 int bkey_cmp (int *,int *) ;
 int clamp_t (int ,int ,int,int) ;
 int int64_t ;

__attribute__((used)) static inline int keybuf_nonoverlapping_cmp(struct keybuf_key *l,
         struct keybuf_key *r)
{
 return clamp_t(int64_t, bkey_cmp(&l->key, &r->key), -1, 1);
}
