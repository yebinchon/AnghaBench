
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dynamic_sa_ctl {int dummy; } ;
typedef int __le32 ;



__attribute__((used)) static inline __le32 *get_dynamic_sa_key_field(struct dynamic_sa_ctl *cts)
{
 return (__le32 *) ((unsigned long)cts + sizeof(struct dynamic_sa_ctl));
}
