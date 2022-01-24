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
struct parser_exec_state {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parser_exec_state*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct parser_exec_state *s)
{
	return FUNC1(s->info, FUNC0(s, 0));
}