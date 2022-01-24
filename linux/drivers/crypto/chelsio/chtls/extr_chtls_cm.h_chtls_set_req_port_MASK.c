#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct request_sock {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  ir_num; int /*<<< orphan*/  ir_rmt_port; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct request_sock *oreq,
				      __be16 source, __be16 dest)
{
	FUNC0(oreq)->ir_rmt_port = source;
	FUNC0(oreq)->ir_num = FUNC1(dest);
}