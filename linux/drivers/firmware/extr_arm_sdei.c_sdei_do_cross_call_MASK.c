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
struct sdei_event {int dummy; } ;
struct sdei_crosscall_args {int first_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdei_crosscall_args,struct sdei_event*) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct sdei_crosscall_args*,int) ; 

__attribute__((used)) static inline int FUNC2(void *fn, struct sdei_event * event)
{
	struct sdei_crosscall_args arg;

	FUNC0(arg, event);
	FUNC1(fn, &arg, true);

	return arg.first_error;
}