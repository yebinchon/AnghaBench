#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct kiocb {scalar_t__ ki_pos; TYPE_1__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct drm_dp_aux_dev {int /*<<< orphan*/  usecount; TYPE_2__* aux; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {scalar_t__ is_remote; } ;
struct TYPE_4__ {struct drm_dp_aux_dev* private_data; } ;

/* Variables and functions */
 scalar_t__ AUX_MAX_OFFSET ; 
 int DP_AUX_MAX_PAYLOAD_BYTES ; 
 scalar_t__ EFAULT ; 
 scalar_t__ ENODEV ; 
 scalar_t__ ERESTARTSYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,struct iov_iter*) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC3 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC6 (struct iov_iter*,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC10(struct kiocb *iocb, struct iov_iter *from)
{
	struct drm_dp_aux_dev *aux_dev = iocb->ki_filp->private_data;
	loff_t pos = iocb->ki_pos;
	ssize_t res = 0;

	if (!FUNC1(&aux_dev->usecount))
		return -ENODEV;

	FUNC6(from, AUX_MAX_OFFSET - pos);

	while (FUNC5(from)) {
		uint8_t buf[DP_AUX_MAX_PAYLOAD_BYTES];
		ssize_t todo = FUNC7(FUNC5(from), sizeof(buf));

		if (FUNC8(current)) {
			res = -ERESTARTSYS;
			break;
		}

		if (!FUNC2(buf, todo, from)) {
			res = -EFAULT;
			break;
		}

		if (aux_dev->aux->is_remote)
			res = FUNC4(aux_dev->aux, pos, buf,
						    todo);
		else
			res = FUNC3(aux_dev->aux, pos, buf, todo);

		if (res <= 0)
			break;

		pos += res;
	}

	if (pos != iocb->ki_pos)
		res = pos - iocb->ki_pos;
	iocb->ki_pos = pos;

	if (FUNC0(&aux_dev->usecount))
		FUNC9(&aux_dev->usecount);

	return res;
}