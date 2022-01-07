
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int kill_litter_super (struct super_block*) ;
 int * qib_super ;

__attribute__((used)) static void qibfs_kill_super(struct super_block *s)
{
 kill_litter_super(s);
 qib_super = ((void*)0);
}
