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
struct c4iw_wr_wait {int dummy; } ;
struct c4iw_rdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct c4iw_wr_wait*) ; 
 int FUNC1 (struct c4iw_rdev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct c4iw_wr_wait*) ; 
 int FUNC3 (struct c4iw_rdev*,struct c4iw_wr_wait*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,struct c4iw_wr_wait*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct c4iw_rdev *rdev,
				     struct sk_buff *skb,
				     struct c4iw_wr_wait *wr_waitp,
				     u32 hwtid, u32 qpid,
				     const char *func)
{
	int ret;

	FUNC4("%s wr_wait %p hwtid %u qpid %u\n", func, wr_waitp, hwtid,
		 qpid);
	FUNC0(wr_waitp);
	ret = FUNC1(rdev, skb);
	if (ret) {
		FUNC2(wr_waitp);
		return ret;
	}
	return FUNC3(rdev, wr_waitp, hwtid, qpid, func);
}