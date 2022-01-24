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
typedef  int /*<<< orphan*/  vb2_thread_fnc ;
struct vb2_threadio_data {int /*<<< orphan*/ * thread; void* priv; int /*<<< orphan*/  fnc; } ;
struct vb2_queue {struct vb2_threadio_data* threadio; int /*<<< orphan*/  is_output; int /*<<< orphan*/  fileio; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_queue*) ; 
 int FUNC4 (struct vb2_queue*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vb2_threadio_data*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,struct vb2_queue*,char*,char const*) ; 
 struct vb2_threadio_data* FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct vb2_queue*) ; 
 int /*<<< orphan*/  vb2_thread ; 

int FUNC10(struct vb2_queue *q, vb2_thread_fnc fnc, void *priv,
		     const char *thread_name)
{
	struct vb2_threadio_data *threadio;
	int ret = 0;

	if (q->threadio)
		return -EBUSY;
	if (FUNC9(q))
		return -EBUSY;
	if (FUNC2(q->fileio))
		return -EBUSY;

	threadio = FUNC8(sizeof(*threadio), GFP_KERNEL);
	if (threadio == NULL)
		return -ENOMEM;
	threadio->fnc = fnc;
	threadio->priv = priv;

	ret = FUNC4(q, !q->is_output);
	FUNC5(3, "file io: vb2_init_fileio result: %d\n", ret);
	if (ret)
		goto nomem;
	q->threadio = threadio;
	threadio->thread = FUNC7(vb2_thread, q, "vb2-%s", thread_name);
	if (FUNC0(threadio->thread)) {
		ret = FUNC1(threadio->thread);
		threadio->thread = NULL;
		goto nothread;
	}
	return 0;

nothread:
	FUNC3(q);
nomem:
	FUNC6(threadio);
	return ret;
}