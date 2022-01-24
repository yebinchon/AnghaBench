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
union ib_gid {scalar_t__ raw; } ;
struct net_device {int dummy; } ;
struct in_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENODEV ; 
 struct in_device* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct in_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev, union ib_gid *mgid, bool join)
{
	struct in_device *in_dev = NULL;

	if (ndev) {
		FUNC3();
		in_dev = FUNC0(ndev);
		if (in_dev) {
			if (join)
				FUNC2(in_dev,
						*(__be32 *)(mgid->raw + 12));
			else
				FUNC1(in_dev,
						*(__be32 *)(mgid->raw + 12));
		}
		FUNC4();
	}
	return (in_dev) ? 0 : -ENODEV;
}