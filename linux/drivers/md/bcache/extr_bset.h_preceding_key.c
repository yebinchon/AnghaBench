
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bkey {int low; int high; } ;


 struct bkey KEY (scalar_t__,scalar_t__,int ) ;
 scalar_t__ KEY_INODE (struct bkey*) ;
 scalar_t__ KEY_OFFSET (struct bkey*) ;

__attribute__((used)) static inline void preceding_key(struct bkey *k, struct bkey **preceding_key_p)
{
 if (KEY_INODE(k) || KEY_OFFSET(k)) {
  (**preceding_key_p) = KEY(KEY_INODE(k), KEY_OFFSET(k), 0);
  if (!(*preceding_key_p)->low)
   (*preceding_key_p)->high--;
  (*preceding_key_p)->low--;
 } else {
  (*preceding_key_p) = ((void*)0);
 }
}
