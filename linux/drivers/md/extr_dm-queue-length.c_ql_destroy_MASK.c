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
struct selector {int /*<<< orphan*/  failed_paths; int /*<<< orphan*/  valid_paths; } ;
struct path_selector {struct selector* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct selector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct path_selector *ps)
{
	struct selector *s = ps->context;

	FUNC1(&s->valid_paths);
	FUNC1(&s->failed_paths);
	FUNC0(s);
	ps->context = NULL;
}