#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct intel_guc {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_14__ {struct intel_guc guc; } ;
struct TYPE_15__ {TYPE_1__ uc; } ;
struct drm_i915_private {TYPE_3__ drm; int /*<<< orphan*/  runtime_pm; TYPE_2__ gt; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
struct TYPE_17__ {scalar_t__ stage_id; scalar_t__ doorbell_id; } ;

/* Variables and functions */
 int ATTEMPTS ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GUC_CLIENT_PRIORITY_NUM ; 
 scalar_t__ GUC_NUM_DOORBELLS ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (struct intel_guc*,int) ; 
 int FUNC8 (struct intel_guc*) ; 
 TYPE_4__** clients ; 
 TYPE_4__* FUNC9 (struct intel_guc*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int FUNC16 (TYPE_4__*) ; 
 int FUNC17 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC18(void *arg)
{
	struct drm_i915_private *dev_priv = arg;
	intel_wakeref_t wakeref;
	struct intel_guc *guc;
	int i, err = 0;
	u16 db_id;

	FUNC0(!FUNC1(dev_priv));
	FUNC13(&dev_priv->drm.struct_mutex);
	wakeref = FUNC11(&dev_priv->runtime_pm);

	guc = &dev_priv->gt.uc.guc;
	if (!guc) {
		FUNC15("No guc object!\n");
		err = -EINVAL;
		goto unlock;
	}

	err = FUNC8(guc);
	if (err)
		goto unlock;

	for (i = 0; i < ATTEMPTS; i++) {
		clients[i] = FUNC9(guc, i % GUC_CLIENT_PRIORITY_NUM);

		if (!clients[i]) {
			FUNC15("[%d] No guc client\n", i);
			err = -EINVAL;
			goto out;
		}

		if (FUNC2(clients[i])) {
			if (FUNC4(clients[i]) != -ENOSPC) {
				FUNC15("[%d] unexpected error\n", i);
				err = FUNC4(clients[i]);
				goto out;
			}

			if (FUNC7(guc, i % GUC_CLIENT_PRIORITY_NUM)) {
				FUNC15("[%d] non-db related alloc fail\n", i);
				err = -EINVAL;
				goto out;
			}

			/* expected, ran out of dbs for this client type */
			continue;
		}

		/*
		 * The check below is only valid because we keep a doorbell
		 * assigned during the whole life of the client.
		 */
		if (clients[i]->stage_id >= GUC_NUM_DOORBELLS) {
			FUNC15("[%d] more clients than doorbells (%d >= %d)\n",
			       i, clients[i]->stage_id, GUC_NUM_DOORBELLS);
			err = -EINVAL;
			goto out;
		}

		err = FUNC17(clients[i], i % GUC_CLIENT_PRIORITY_NUM);
		if (err) {
			FUNC15("[%d] client_alloc sanity check failed!\n", i);
			err = -EINVAL;
			goto out;
		}

		db_id = clients[i]->doorbell_id;

		err = FUNC6(clients[i]);
		if (err) {
			FUNC15("[%d] Failed to create a doorbell\n", i);
			goto out;
		}

		/* doorbell id shouldn't change, we are holding the mutex */
		if (db_id != clients[i]->doorbell_id) {
			FUNC15("[%d] doorbell id changed (%d != %d)\n",
			       i, db_id, clients[i]->doorbell_id);
			err = -EINVAL;
			goto out;
		}

		err = FUNC8(guc);
		if (err)
			goto out;

		err = FUNC16(clients[i]);
		if (err)
			goto out;
	}

out:
	for (i = 0; i < ATTEMPTS; i++)
		if (!FUNC3(clients[i])) {
			FUNC5(clients[i]);
			FUNC10(clients[i]);
		}
unlock:
	FUNC12(&dev_priv->runtime_pm, wakeref);
	FUNC14(&dev_priv->drm.struct_mutex);
	return err;
}