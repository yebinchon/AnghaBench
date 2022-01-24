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
struct c4iw_dev {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct c4iw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC3(struct c4iw_dev *dev, u32 hwtid, struct sk_buff *skb)
{
	FUNC0("c4iw_dev %p tid %u\n", dev, hwtid);
	FUNC2(skb, sizeof(struct cpl_tid_release));
	FUNC1(&dev->rdev, hwtid, skb);
	return;
}