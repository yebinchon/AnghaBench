
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int ipid; } ;


 int GENMASK (int,int ) ;

__attribute__((used)) static int find_umc_channel(struct mce *m)
{
 return (m->ipid & GENMASK(31, 0)) >> 20;
}
