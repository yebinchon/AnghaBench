
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bkey {int dummy; } ;


 struct bkey ZERO_KEY ;

__attribute__((used)) static inline void bkey_init(struct bkey *k)
{
 *k = ZERO_KEY;
}
