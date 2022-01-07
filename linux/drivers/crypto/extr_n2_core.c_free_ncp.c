
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct n2_mau* ino_table; } ;
struct n2_mau {TYPE_1__ mau_info; } ;


 int kfree (struct n2_mau*) ;

__attribute__((used)) static void free_ncp(struct n2_mau *mp)
{
 kfree(mp->mau_info.ino_table);
 mp->mau_info.ino_table = ((void*)0);

 kfree(mp);
}
