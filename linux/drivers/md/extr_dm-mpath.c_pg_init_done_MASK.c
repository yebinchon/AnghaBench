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
struct priority_group {int bypassed; struct multipath* m; } ;
struct pgpath {struct priority_group* pg; } ;
struct multipath {int /*<<< orphan*/  lock; int /*<<< orphan*/  pg_init_wait; int /*<<< orphan*/  flags; int /*<<< orphan*/  pg_init_in_progress; int /*<<< orphan*/ * current_pg; struct pgpath* current_pgpath; int /*<<< orphan*/  hw_handler_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  MPATHF_PG_INIT_DELAY_RETRY ; 
 int /*<<< orphan*/  MPATHF_PG_INIT_REQUIRED ; 
 int /*<<< orphan*/  MPATHF_QUEUE_IO ; 
#define  SCSI_DH_DEV_OFFLINED 134 
#define  SCSI_DH_DEV_TEMP_BUSY 133 
#define  SCSI_DH_IMM_RETRY 132 
#define  SCSI_DH_NOSYS 131 
#define  SCSI_DH_OK 130 
#define  SCSI_DH_RES_TEMP_UNAVAIL 129 
#define  SCSI_DH_RETRY 128 
 scalar_t__ FUNC1 (struct multipath*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct multipath*,struct priority_group*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pgpath*) ; 
 int /*<<< orphan*/  FUNC6 (struct multipath*,struct pgpath*) ; 
 int /*<<< orphan*/  FUNC7 (struct multipath*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(void *data, int errors)
{
	struct pgpath *pgpath = data;
	struct priority_group *pg = pgpath->pg;
	struct multipath *m = pg->m;
	unsigned long flags;
	bool delay_retry = false;

	/* device or driver problems */
	switch (errors) {
	case SCSI_DH_OK:
		break;
	case SCSI_DH_NOSYS:
		if (!m->hw_handler_name) {
			errors = 0;
			break;
		}
		FUNC0("Could not failover the device: Handler scsi_dh_%s "
		      "Error %d.", m->hw_handler_name, errors);
		/*
		 * Fail path for now, so we do not ping pong
		 */
		FUNC5(pgpath);
		break;
	case SCSI_DH_DEV_TEMP_BUSY:
		/*
		 * Probably doing something like FW upgrade on the
		 * controller so try the other pg.
		 */
		FUNC3(m, pg, true);
		break;
	case SCSI_DH_RETRY:
		/* Wait before retrying. */
		delay_retry = 1;
		/* fall through */
	case SCSI_DH_IMM_RETRY:
	case SCSI_DH_RES_TEMP_UNAVAIL:
		if (FUNC6(m, pgpath))
			FUNC5(pgpath);
		errors = 0;
		break;
	case SCSI_DH_DEV_OFFLINED:
	default:
		/*
		 * We probably do not want to fail the path for a device
		 * error, but this is what the old dm did. In future
		 * patches we can do more advanced handling.
		 */
		FUNC5(pgpath);
	}

	FUNC9(&m->lock, flags);
	if (errors) {
		if (pgpath == m->current_pgpath) {
			FUNC0("Could not failover device. Error %d.", errors);
			m->current_pgpath = NULL;
			m->current_pg = NULL;
		}
	} else if (!FUNC11(MPATHF_PG_INIT_REQUIRED, &m->flags))
		pg->bypassed = false;

	if (FUNC2(&m->pg_init_in_progress) > 0)
		/* Activations of other paths are still on going */
		goto out;

	if (FUNC11(MPATHF_PG_INIT_REQUIRED, &m->flags)) {
		if (delay_retry)
			FUNC8(MPATHF_PG_INIT_DELAY_RETRY, &m->flags);
		else
			FUNC4(MPATHF_PG_INIT_DELAY_RETRY, &m->flags);

		if (FUNC1(m))
			goto out;
	}
	FUNC4(MPATHF_QUEUE_IO, &m->flags);

	FUNC7(m);

	/*
	 * Wake up any thread waiting to suspend.
	 */
	FUNC12(&m->pg_init_wait);

out:
	FUNC10(&m->lock, flags);
}