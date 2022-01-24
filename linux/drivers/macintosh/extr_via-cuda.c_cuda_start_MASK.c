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
struct TYPE_2__ {int* data; } ;

/* Variables and functions */
 size_t ACR ; 
 size_t B ; 
 size_t SR ; 
 int SR_OUT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  cuda_state ; 
 TYPE_1__* current_req ; 
 scalar_t__ data_index ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ mcu_is_egret ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sent_first_byte ; 
 int /*<<< orphan*/ * via ; 

__attribute__((used)) static void
FUNC5(void)
{
    /* assert cuda_state == idle */
    if (current_req == NULL)
	return;
    data_index = 0;
    if (FUNC0(FUNC3(&via[B])))
	return;			/* a byte is coming in from the CUDA */

    /* set the shift register to shift out and send a byte */
    FUNC4(&via[ACR], FUNC3(&via[ACR]) | SR_OUT);
    FUNC4(&via[SR], current_req->data[data_index++]);
    if (mcu_is_egret)
	FUNC2();
    else
	FUNC1();
    cuda_state = sent_first_byte;
}