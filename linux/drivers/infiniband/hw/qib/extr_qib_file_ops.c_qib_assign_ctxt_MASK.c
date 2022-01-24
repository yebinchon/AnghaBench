#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qib_user_info {int spu_userversion; unsigned int spu_port_alg; scalar_t__ spu_subctxt_cnt; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dd; } ;
struct TYPE_3__ {unsigned int nr_cpus_allowed; int /*<<< orphan*/  cpus_ptr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 unsigned int QIB_PORT_ALG_ACROSS ; 
 unsigned int QIB_PORT_ALG_COUNT ; 
 int QIB_USER_MINOR_BASE ; 
 unsigned int QIB_USER_SWMAJOR ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct file*) ; 
 TYPE_1__* current ; 
 int FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int FUNC5 (int,struct file*,struct qib_user_info const*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int const,int*) ; 
 int FUNC7 (struct file*,struct qib_user_info const*) ; 
 int FUNC8 (struct file*,struct qib_user_info const*,unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  qib_cpulist ; 
 int /*<<< orphan*/  qib_mutex ; 
 int /*<<< orphan*/  FUNC13 (unsigned int const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct file *fp, const struct qib_user_info *uinfo)
{
	int ret;
	int i_minor;
	unsigned swmajor, swminor, alg = QIB_PORT_ALG_ACROSS;

	/* Check to be sure we haven't already initialized this file */
	if (FUNC2(fp)) {
		ret = -EINVAL;
		goto done;
	}

	/* for now, if major version is different, bail */
	swmajor = uinfo->spu_userversion >> 16;
	if (swmajor != QIB_USER_SWMAJOR) {
		ret = -ENODEV;
		goto done;
	}

	swminor = uinfo->spu_userversion & 0xffff;

	if (swminor >= 11 && uinfo->spu_port_alg < QIB_PORT_ALG_COUNT)
		alg = uinfo->spu_port_alg;

	FUNC10(&qib_mutex);

	if (FUNC12(swmajor, swminor) &&
	    uinfo->spu_subctxt_cnt) {
		ret = FUNC7(fp, uinfo);
		if (ret > 0) {
			ret = FUNC3(fp);
			if (!ret)
				FUNC0(fp, (FUNC2(fp))->dd);
			goto done_ok;
		}
	}

	i_minor = FUNC9(FUNC4(fp)) - QIB_USER_MINOR_BASE;
	if (i_minor)
		ret = FUNC5(i_minor - 1, fp, uinfo);
	else {
		int unit;
		const unsigned int cpu = FUNC1(current->cpus_ptr);
		const unsigned int weight = current->nr_cpus_allowed;

		if (weight == 1 && !FUNC13(cpu, qib_cpulist))
			if (!FUNC6(cpu, &unit) && unit >= 0)
				if (!FUNC5(unit, fp, uinfo)) {
					ret = 0;
					goto done_chk_sdma;
				}
		ret = FUNC8(fp, uinfo, alg);
	}

done_chk_sdma:
	if (!ret)
		ret = FUNC3(fp);
done_ok:
	FUNC11(&qib_mutex);

done:
	return ret;
}