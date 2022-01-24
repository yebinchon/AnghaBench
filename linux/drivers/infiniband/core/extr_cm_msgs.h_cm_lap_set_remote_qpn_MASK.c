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
struct cm_lap_msg {int /*<<< orphan*/  offset12; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(struct cm_lap_msg *lap_msg, __be32 qpn)
{
	lap_msg->offset12 = FUNC1((FUNC0(qpn) << 8) |
					 (FUNC0(lap_msg->offset12) &
					  0x000000FF));
}