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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct cpl_tid_release {int dummy; } ;
struct c4iw_rdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct c4iw_rdev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct c4iw_rdev *rdev, u32 hwtid, struct sk_buff *skb)
{
	u32 len = FUNC3(sizeof(struct cpl_tid_release), 16);

	skb = FUNC2(skb, len, GFP_KERNEL);
	if (!skb)
		return;

	FUNC1(skb, len, hwtid, 0);
	FUNC0(rdev, skb);
	return;
}