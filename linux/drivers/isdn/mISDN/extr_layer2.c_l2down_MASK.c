#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* u_int ;
struct sk_buff {int dummy; } ;
struct mISDNhead {void* id; void* prim; } ;
struct layer2 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct layer2*,struct sk_buff*) ; 
 struct mISDNhead* FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC2(struct layer2 *l2, u_int prim, u_int id, struct sk_buff *skb)
{
	struct mISDNhead *hh = FUNC1(skb);

	hh->prim = prim;
	hh->id = id;
	return FUNC0(l2, skb);
}