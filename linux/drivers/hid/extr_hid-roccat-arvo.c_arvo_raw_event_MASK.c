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
typedef  int /*<<< orphan*/  u8 ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;
struct arvo_device {scalar_t__ roccat_claimed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arvo_device*,int /*<<< orphan*/ *) ; 
 struct arvo_device* FUNC1 (struct hid_device*) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hdev,
		struct hid_report *report, u8 *data, int size)
{
	struct arvo_device *arvo = FUNC1(hdev);

	if (size != 3)
		return 0;

	if (arvo && arvo->roccat_claimed)
		FUNC0(arvo, data);

	return 0;
}