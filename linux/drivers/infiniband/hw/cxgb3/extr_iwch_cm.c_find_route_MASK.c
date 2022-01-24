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
typedef  int /*<<< orphan*/  u8 ;
struct t3cdev {int dummy; } ;
struct rtable {int dummy; } ;
struct flowi4 {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int /*<<< orphan*/  init_net ; 
 struct rtable* FUNC1 (int /*<<< orphan*/ *,struct flowi4*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rtable *FUNC2(struct t3cdev *dev, __be32 local_ip,
				 __be32 peer_ip, __be16 local_port,
				 __be16 peer_port, u8 tos)
{
	struct rtable *rt;
	struct flowi4 fl4;

	rt = FUNC1(&init_net, &fl4, NULL, peer_ip, local_ip,
				   peer_port, local_port, IPPROTO_TCP,
				   tos, 0);
	if (FUNC0(rt))
		return NULL;
	return rt;
}