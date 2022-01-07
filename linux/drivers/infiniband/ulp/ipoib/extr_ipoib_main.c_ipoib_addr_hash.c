
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ipoib_neigh_hash {int mask; } ;


 int IPOIB_QPN_MASK ;
 int jhash_3words (int,int,int,int ) ;

__attribute__((used)) static u32 ipoib_addr_hash(struct ipoib_neigh_hash *htbl, u8 *daddr)
{







 u32 *d32 = (u32 *) daddr;
 u32 hv;

 hv = jhash_3words(d32[3], d32[4], IPOIB_QPN_MASK & d32[0], 0);
 return hv & htbl->mask;
}
