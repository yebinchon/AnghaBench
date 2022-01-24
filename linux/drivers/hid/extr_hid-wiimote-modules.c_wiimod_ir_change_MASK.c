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
struct TYPE_2__ {int flags; int /*<<< orphan*/  lock; scalar_t__ cmd_err; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef  int /*<<< orphan*/  format ;
typedef  int /*<<< orphan*/  data_sens2 ;
typedef  int /*<<< orphan*/  data_sens1 ;
typedef  int /*<<< orphan*/  data_fin ;
typedef  int /*<<< orphan*/  data_enable ;
typedef  int __u8 ;
typedef  int __u16 ;

/* Variables and functions */
 int EIO ; 
 int WIIPROTO_FLAGS_IR ; 
#define  WIIPROTO_FLAG_IR_BASIC 130 
#define  WIIPROTO_FLAG_IR_EXT 129 
#define  WIIPROTO_FLAG_IR_FULL 128 
 int /*<<< orphan*/  WIIPROTO_REQ_IR1 ; 
 int /*<<< orphan*/  WIIPROTO_REQ_IR2 ; 
 int /*<<< orphan*/  WIIPROTO_REQ_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct wiimote_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wiimote_data*) ; 
 int FUNC6 (struct wiimote_data*,int,int const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wiimote_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wiimote_data*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wiimote_data*,int) ; 

__attribute__((used)) static int FUNC10(struct wiimote_data *wdata, __u16 mode)
{
	int ret;
	unsigned long flags;
	__u8 format = 0;
	static const __u8 data_enable[] = { 0x01 };
	static const __u8 data_sens1[] = { 0x02, 0x00, 0x00, 0x71, 0x01,
						0x00, 0xaa, 0x00, 0x64 };
	static const __u8 data_sens2[] = { 0x63, 0x03 };
	static const __u8 data_fin[] = { 0x08 };

	FUNC0(&wdata->state.lock, flags);

	if (mode == (wdata->state.flags & WIIPROTO_FLAGS_IR)) {
		FUNC1(&wdata->state.lock, flags);
		return 0;
	}

	if (mode == 0) {
		wdata->state.flags &= ~WIIPROTO_FLAGS_IR;
		FUNC8(wdata, 0);
		FUNC9(wdata, 0);
		FUNC7(wdata, WIIPROTO_REQ_NULL);
		FUNC1(&wdata->state.lock, flags);
		return 0;
	}

	FUNC1(&wdata->state.lock, flags);

	ret = FUNC2(wdata);
	if (ret)
		return ret;

	/* send PIXEL CLOCK ENABLE cmd first */
	FUNC0(&wdata->state.lock, flags);
	FUNC4(wdata, WIIPROTO_REQ_IR1, 0);
	FUNC8(wdata, 0x06);
	FUNC1(&wdata->state.lock, flags);

	ret = FUNC5(wdata);
	if (ret)
		goto unlock;
	if (wdata->state.cmd_err) {
		ret = -EIO;
		goto unlock;
	}

	/* enable IR LOGIC */
	FUNC0(&wdata->state.lock, flags);
	FUNC4(wdata, WIIPROTO_REQ_IR2, 0);
	FUNC9(wdata, 0x06);
	FUNC1(&wdata->state.lock, flags);

	ret = FUNC5(wdata);
	if (ret)
		goto unlock;
	if (wdata->state.cmd_err) {
		ret = -EIO;
		goto unlock;
	}

	/* enable IR cam but do not make it send data, yet */
	ret = FUNC6(wdata, 0xb00030, data_enable,
							sizeof(data_enable));
	if (ret)
		goto unlock;

	/* write first sensitivity block */
	ret = FUNC6(wdata, 0xb00000, data_sens1,
							sizeof(data_sens1));
	if (ret)
		goto unlock;

	/* write second sensitivity block */
	ret = FUNC6(wdata, 0xb0001a, data_sens2,
							sizeof(data_sens2));
	if (ret)
		goto unlock;

	/* put IR cam into desired state */
	switch (mode) {
		case WIIPROTO_FLAG_IR_FULL:
			format = 5;
			break;
		case WIIPROTO_FLAG_IR_EXT:
			format = 3;
			break;
		case WIIPROTO_FLAG_IR_BASIC:
			format = 1;
			break;
	}
	ret = FUNC6(wdata, 0xb00033, &format, sizeof(format));
	if (ret)
		goto unlock;

	/* make IR cam send data */
	ret = FUNC6(wdata, 0xb00030, data_fin, sizeof(data_fin));
	if (ret)
		goto unlock;

	/* request new DRM mode compatible to IR mode */
	FUNC0(&wdata->state.lock, flags);
	wdata->state.flags &= ~WIIPROTO_FLAGS_IR;
	wdata->state.flags |= mode & WIIPROTO_FLAGS_IR;
	FUNC7(wdata, WIIPROTO_REQ_NULL);
	FUNC1(&wdata->state.lock, flags);

unlock:
	FUNC3(wdata);
	return ret;
}