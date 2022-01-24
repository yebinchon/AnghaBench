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
struct hsc_client_data {scalar_t__ usecnt; int /*<<< orphan*/  cl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct hsc_client_data *cl_data)
{
	FUNC0(cl_data->usecnt == 0);

	if (--cl_data->usecnt == 0) {
		FUNC1(cl_data->cl);
		FUNC2(cl_data->cl);
	}
}