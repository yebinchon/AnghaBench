#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct intel_guc {scalar_t__ execbuf_client; } ;
struct TYPE_6__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_4__ {struct intel_guc guc; } ;
struct TYPE_5__ {TYPE_1__ uc; } ;
struct drm_i915_private {TYPE_3__ drm; int /*<<< orphan*/  runtime_pm; TYPE_2__ gt; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GUC_CLIENT_PRIORITY_KMD_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(void *args)
{
	struct drm_i915_private *dev_priv = args;
	intel_wakeref_t wakeref;
	struct intel_guc *guc;
	int err = 0;

	FUNC0(!FUNC1(dev_priv));
	FUNC12(&dev_priv->drm.struct_mutex);
	wakeref = FUNC10(&dev_priv->runtime_pm);

	guc = &dev_priv->gt.uc.guc;
	if (!guc) {
		FUNC14("No guc object!\n");
		err = -EINVAL;
		goto unlock;
	}

	err = FUNC2(guc);
	if (err)
		goto unlock;

	/*
	 * Get rid of clients created during driver load because the test will
	 * recreate them.
	 */
	FUNC7(guc);
	FUNC6(guc);
	if (guc->execbuf_client) {
		FUNC14("guc_clients_destroy lied!\n");
		err = -EINVAL;
		goto unlock;
	}

	err = FUNC5(guc);
	if (err) {
		FUNC14("Failed to create clients\n");
		goto unlock;
	}
	FUNC0(!guc->execbuf_client);

	err = FUNC15(guc->execbuf_client,
			      GUC_CLIENT_PRIORITY_KMD_NORMAL);
	if (err) {
		FUNC14("execbug client validation failed\n");
		goto out;
	}

	/* the client should now have reserved a doorbell */
	if (!FUNC9(guc->execbuf_client)) {
		FUNC14("guc_clients_create didn't reserve doorbells\n");
		err = -EINVAL;
		goto out;
	}

	/* Now enable the clients */
	FUNC8(guc);

	/* each client should now have received a doorbell */
	if (!FUNC3(guc->execbuf_client)) {
		FUNC14("failed to initialize the doorbells\n");
		err = -EINVAL;
		goto out;
	}

	/*
	 * Basic test - an attempt to reallocate a valid doorbell to the
	 * client it is currently assigned should not cause a failure.
	 */
	err = FUNC4(guc->execbuf_client);

out:
	/*
	 * Leave clean state for other test, plus the driver always destroy the
	 * clients during unload.
	 */
	FUNC7(guc);
	FUNC6(guc);
	FUNC5(guc);
	FUNC8(guc);
unlock:
	FUNC11(&dev_priv->runtime_pm, wakeref);
	FUNC13(&dev_priv->drm.struct_mutex);
	return err;
}