
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bch_ratelimit {int next; } ;


 int local_clock () ;

__attribute__((used)) static inline void bch_ratelimit_reset(struct bch_ratelimit *d)
{
 d->next = local_clock();
}
