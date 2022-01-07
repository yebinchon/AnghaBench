
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG () ;
 struct page* free_pt_l2 (unsigned long,struct page*) ;
 struct page* free_pt_l3 (unsigned long,struct page*) ;
 struct page* free_pt_l4 (unsigned long,struct page*) ;
 struct page* free_pt_l5 (unsigned long,struct page*) ;
 struct page* free_pt_l6 (unsigned long,struct page*) ;
 struct page* free_pt_page (unsigned long,struct page*) ;

__attribute__((used)) static struct page *free_sub_pt(unsigned long root, int mode,
    struct page *freelist)
{
 switch (mode) {
 case 128:
 case 129:
  break;
 case 135:
  freelist = free_pt_page(root, freelist);
  break;
 case 134:
  freelist = free_pt_l2(root, freelist);
  break;
 case 133:
  freelist = free_pt_l3(root, freelist);
  break;
 case 132:
  freelist = free_pt_l4(root, freelist);
  break;
 case 131:
  freelist = free_pt_l5(root, freelist);
  break;
 case 130:
  freelist = free_pt_l6(root, freelist);
  break;
 default:
  BUG();
 }

 return freelist;
}
