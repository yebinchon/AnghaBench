
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5conf {TYPE_1__* mddev; } ;
struct TYPE_2__ {int flags; } ;


 int MD_HAS_PPL ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool raid5_has_ppl(struct r5conf *conf)
{
 return test_bit(MD_HAS_PPL, &conf->mddev->flags);
}
