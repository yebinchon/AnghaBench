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
typedef  int /*<<< orphan*/  u64 ;
struct hfi1_devdata {int /*<<< orphan*/  sc2vl_lock; int /*<<< orphan*/  sc2vl; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEND_SC2VLT0 ; 
 int /*<<< orphan*/  SEND_SC2VLT1 ; 
 int /*<<< orphan*/  SEND_SC2VLT2 ; 
 int /*<<< orphan*/  SEND_SC2VLT3 ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hfi1_devdata *dd, void *data)
{
	u64 *val = data;

	FUNC0(data, true);

	FUNC2(dd, SEND_SC2VLT0, *val++);
	FUNC2(dd, SEND_SC2VLT1, *val++);
	FUNC2(dd, SEND_SC2VLT2, *val++);
	FUNC2(dd, SEND_SC2VLT3, *val++);
	FUNC3(&dd->sc2vl_lock);
	FUNC1(dd->sc2vl, data, sizeof(dd->sc2vl));
	FUNC4(&dd->sc2vl_lock);
	return 0;
}