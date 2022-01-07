
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n2_mau {int mau_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct n2_mau* kzalloc (int,int ) ;

__attribute__((used)) static struct n2_mau *alloc_ncp(void)
{
 struct n2_mau *mp = kzalloc(sizeof(struct n2_mau), GFP_KERNEL);

 if (mp)
  INIT_LIST_HEAD(&mp->mau_list);

 return mp;
}
