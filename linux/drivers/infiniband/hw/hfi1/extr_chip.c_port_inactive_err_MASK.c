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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_INCORRECT_LINK_STATE ; 
 int /*<<< orphan*/  TX_LINKDOWN ; 

__attribute__((used)) static inline int FUNC1(u64 posn)
{
	return (posn >= FUNC0(TX_LINKDOWN) &&
		posn <= FUNC0(TX_INCORRECT_LINK_STATE));
}