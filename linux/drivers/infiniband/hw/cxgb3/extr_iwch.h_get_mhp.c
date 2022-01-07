
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwch_mr {int dummy; } ;
struct iwch_dev {int mrs; } ;


 struct iwch_mr* xa_load (int *,int ) ;

__attribute__((used)) static inline struct iwch_mr *get_mhp(struct iwch_dev *rhp, u32 mmid)
{
 return xa_load(&rhp->mrs, mmid);
}
