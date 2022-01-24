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
struct sdei_crosscall_args {TYPE_1__* event; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_num; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdei_crosscall_args*,int) ; 

__attribute__((used)) static void FUNC2(void *data)
{
	int err;
	struct sdei_crosscall_args *arg = data;

	err = FUNC0(arg->event->event_num);

	FUNC1(arg, err);
}