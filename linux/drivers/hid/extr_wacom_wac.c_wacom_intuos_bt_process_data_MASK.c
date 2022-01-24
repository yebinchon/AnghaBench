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
struct wacom_wac {scalar_t__ pad_input; scalar_t__ pen_input; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wacom_wac*) ; 

__attribute__((used)) static void FUNC3(struct wacom_wac *wacom,
		unsigned char *data)
{
	FUNC1(wacom->data, data, 10);
	FUNC2(wacom);

	FUNC0(wacom->pen_input);
	if (wacom->pad_input)
		FUNC0(wacom->pad_input);
}