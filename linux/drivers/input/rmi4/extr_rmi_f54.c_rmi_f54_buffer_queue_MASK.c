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
typedef  int /*<<< orphan*/  u16 ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct f54_data {int /*<<< orphan*/  status_mutex; int /*<<< orphan*/  data_mutex; int /*<<< orphan*/  report_size; int /*<<< orphan*/  report_data; TYPE_1__* fn; int /*<<< orphan*/  cmd_done; scalar_t__ is_busy; int /*<<< orphan*/  input; } ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
typedef  enum rmi_f54_report_type { ____Placeholder_rmi_f54_report_type } rmi_f54_report_type ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int F54_REPORT_NONE ; 
 int VB2_BUF_STATE_DONE ; 
 int VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct f54_data*) ; 
 int FUNC6 (struct f54_data*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vb2_buffer*,int) ; 
 struct f54_data* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vb2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct vb2_buffer *vb)
{
	struct f54_data *f54 = FUNC9(vb->vb2_queue);
	u16 *ptr;
	enum vb2_buffer_state state;
	enum rmi_f54_report_type reptype;
	int ret;

	FUNC3(&f54->status_mutex);

	reptype = FUNC6(f54, f54->input);
	if (reptype == F54_REPORT_NONE) {
		state = VB2_BUF_STATE_ERROR;
		goto done;
	}

	if (f54->is_busy) {
		state = VB2_BUF_STATE_ERROR;
		goto done;
	}

	ret = FUNC7(f54->fn, reptype);
	if (ret) {
		FUNC0(&f54->fn->dev, "Error requesting F54 report\n");
		state = VB2_BUF_STATE_ERROR;
		goto done;
	}

	/* get frame data */
	FUNC3(&f54->data_mutex);

	while (f54->is_busy) {
		FUNC4(&f54->data_mutex);
		if (!FUNC12(&f54->cmd_done,
						 FUNC2(1000))) {
			FUNC0(&f54->fn->dev, "Timed out\n");
			state = VB2_BUF_STATE_ERROR;
			goto done;
		}
		FUNC3(&f54->data_mutex);
	}

	ptr = FUNC10(vb, 0);
	if (!ptr) {
		FUNC0(&f54->fn->dev, "Error acquiring frame ptr\n");
		state = VB2_BUF_STATE_ERROR;
		goto data_done;
	}

	FUNC1(ptr, f54->report_data, f54->report_size);
	FUNC11(vb, 0, FUNC5(f54));
	state = VB2_BUF_STATE_DONE;

data_done:
	FUNC4(&f54->data_mutex);
done:
	FUNC8(vb, state);
	FUNC4(&f54->status_mutex);
}