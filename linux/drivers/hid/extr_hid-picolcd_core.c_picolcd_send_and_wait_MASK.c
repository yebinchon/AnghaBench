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
typedef  int /*<<< orphan*/  u8 ;
struct picolcd_pending {int /*<<< orphan*/  ready; scalar_t__ raw_size; int /*<<< orphan*/ * in_report; struct hid_report* out_report; } ;
struct picolcd_data {int status; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; struct picolcd_pending* pending; int /*<<< orphan*/  hdev; } ;
struct hid_report {int maxfield; TYPE_1__** field; } ;
struct hid_device {int dummy; } ;
struct TYPE_2__ {int report_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int HZ ; 
 int PICOLCD_FAILED ; 
 struct picolcd_data* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hid_report*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct picolcd_pending*) ; 
 struct picolcd_pending* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct hid_report* FUNC8 (int,struct hid_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

struct picolcd_pending *FUNC12(struct hid_device *hdev,
		int report_id, const u8 *raw_data, int size)
{
	struct picolcd_data *data = FUNC0(hdev);
	struct picolcd_pending *work;
	struct hid_report *report = FUNC8(report_id, hdev);
	unsigned long flags;
	int i, j, k;

	if (!report || !data)
		return NULL;
	if (data->status & PICOLCD_FAILED)
		return NULL;
	work = FUNC5(sizeof(*work), GFP_KERNEL);
	if (!work)
		return NULL;

	FUNC3(&work->ready);
	work->out_report = report;
	work->in_report  = NULL;
	work->raw_size   = 0;

	FUNC6(&data->mutex);
	FUNC9(&data->lock, flags);
	for (i = k = 0; i < report->maxfield; i++)
		for (j = 0; j < report->field[i]->report_count; j++) {
			FUNC2(report->field[i], j, k < size ? raw_data[k] : 0);
			k++;
		}
	if (data->status & PICOLCD_FAILED) {
		FUNC4(work);
		work = NULL;
	} else {
		data->pending = work;
		FUNC1(data->hdev, report, HID_REQ_SET_REPORT);
		FUNC10(&data->lock, flags);
		FUNC11(&work->ready, HZ*2);
		FUNC9(&data->lock, flags);
		data->pending = NULL;
	}
	FUNC10(&data->lock, flags);
	FUNC7(&data->mutex);
	return work;
}