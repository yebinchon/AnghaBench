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
struct bkey {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct bkey const*,struct bkey*) ; 
 scalar_t__ FUNC2 (struct bkey const*,struct bkey*) ; 

__attribute__((used)) static inline bool FUNC3(const struct bkey *where, struct bkey *k)
{
	FUNC0(FUNC2(where, k) > 0);
	return FUNC1(where, k);
}