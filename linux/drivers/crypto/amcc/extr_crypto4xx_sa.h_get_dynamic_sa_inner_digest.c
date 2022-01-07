
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key_size; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct dynamic_sa_ctl {TYPE_2__ sa_contents; } ;
typedef int __le32 ;



__attribute__((used)) static inline __le32 *get_dynamic_sa_inner_digest(struct dynamic_sa_ctl *cts)
{
 return (__le32 *) ((unsigned long)cts +
  sizeof(struct dynamic_sa_ctl) +
  cts->sa_contents.bf.key_size * 4);
}
