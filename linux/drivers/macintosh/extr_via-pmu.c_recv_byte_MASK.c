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

/* Variables and functions */
 size_t ACR ; 
 size_t B ; 
 size_t SR ; 
 int SR_EXT ; 
 int SR_OUT ; 
 int TREQ ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * via1 ; 
 int /*<<< orphan*/ * via2 ; 

__attribute__((used)) static inline void
FUNC2(void)
{
	FUNC1(&via1[ACR], (FUNC0(&via1[ACR]) & ~SR_OUT) | SR_EXT);
	FUNC0(&via1[SR]);		/* resets SR */
	FUNC1(&via2[B], FUNC0(&via2[B]) & ~TREQ);
	(void)FUNC0(&via2[B]);
}