
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_ah {int device; } ;


 int mthca_destroy_ah (int ,int ) ;
 int to_mah (struct ib_ah*) ;
 int to_mdev (int ) ;

__attribute__((used)) static void mthca_ah_destroy(struct ib_ah *ah, u32 flags)
{
 mthca_destroy_ah(to_mdev(ah->device), to_mah(ah));
}
