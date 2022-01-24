#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ishtp_cl_rb {int /*<<< orphan*/  list; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; } ;
struct ishtp_cl {int rx_ring_size; TYPE_2__* device; int /*<<< orphan*/  free_list_spinlock; TYPE_1__ free_rb_list; } ;
struct TYPE_7__ {size_t max_msg_length; } ;
struct TYPE_8__ {TYPE_3__ props; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; TYPE_4__* fw_client; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ishtp_cl*) ; 
 int FUNC2 (struct ishtp_cl_rb*,size_t) ; 
 struct ishtp_cl_rb* FUNC3 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct ishtp_cl *cl)
{
	size_t	len = cl->device->fw_client->props.max_msg_length;
	int	j;
	struct ishtp_cl_rb *rb;
	int	ret = 0;
	unsigned long	flags;

	for (j = 0; j < cl->rx_ring_size; ++j) {
		rb = FUNC3(cl);
		if (!rb) {
			ret = -ENOMEM;
			goto out;
		}
		ret = FUNC2(rb, len);
		if (ret)
			goto out;
		FUNC5(&cl->free_list_spinlock, flags);
		FUNC4(&rb->list, &cl->free_rb_list.list);
		FUNC6(&cl->free_list_spinlock, flags);
	}

	return	0;

out:
	FUNC0(&cl->device->dev, "error in allocating Rx buffers\n");
	FUNC1(cl);
	return	ret;
}