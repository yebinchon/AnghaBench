#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int dataind_pending; int /*<<< orphan*/  lock; int /*<<< orphan*/  dataind_queue; TYPE_1__* cl; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 TYPE_2__ cs_char_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(u32 message, int maxlength)
{
	FUNC0(message, &cs_char_data.dataind_queue);

	FUNC4(&cs_char_data.lock);
	cs_char_data.dataind_pending++;
	while (cs_char_data.dataind_pending > maxlength &&
				!FUNC3(&cs_char_data.dataind_queue)) {
		FUNC2(&cs_char_data.cl->device, "data notification "
		"queue overrun (%u entries)\n", cs_char_data.dataind_pending);

		FUNC1(&cs_char_data.dataind_queue);
		cs_char_data.dataind_pending--;
	}
	FUNC5(&cs_char_data.lock);
}