#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;
struct intel_csr {int /*<<< orphan*/  version; int /*<<< orphan*/ * dmc_payload; } ;
struct TYPE_14__ {int /*<<< orphan*/  platform; } ;
struct i915_gpu_state {int epoch; int ngtier; int* gtier; int nfence; int* fence; int fault_data1; int fault_data0; int /*<<< orphan*/  uc; int /*<<< orphan*/  params; int /*<<< orphan*/  driver_caps; int /*<<< orphan*/  runtime_info; TYPE_5__ device_info; scalar_t__ display; scalar_t__ overlay; struct drm_i915_error_engine* engine; int /*<<< orphan*/  err_int; int /*<<< orphan*/  done_reg; int /*<<< orphan*/  error; int /*<<< orphan*/  ccid; int /*<<< orphan*/  derrmr; int /*<<< orphan*/  forcewake; int /*<<< orphan*/  pgtbl_er; int /*<<< orphan*/  ier; int /*<<< orphan*/  eir; int /*<<< orphan*/  suspended; int /*<<< orphan*/  wakelock; int /*<<< orphan*/  awake; int /*<<< orphan*/  iommu; int /*<<< orphan*/  suspend_count; int /*<<< orphan*/  reset_count; int /*<<< orphan*/  capture; int /*<<< orphan*/  uptime; int /*<<< orphan*/  boottime; int /*<<< orphan*/  time; scalar_t__* error_msg; } ;
struct drm_i915_error_state_buf {TYPE_4__* i915; } ;
struct drm_i915_error_object {int /*<<< orphan*/  gtt_offset; } ;
struct TYPE_10__ {int comm; int pid; } ;
struct drm_i915_error_engine {int user_bo_count; int num_requests; struct drm_i915_error_object const* default_state; TYPE_2__* engine; struct drm_i915_error_object const* wa_batchbuffer; struct drm_i915_error_object const* wa_ctx; struct drm_i915_error_object const* ctx; struct drm_i915_error_object const* hws_page; struct drm_i915_error_object const* ringbuffer; int /*<<< orphan*/ * requests; struct drm_i915_error_object const** user_bo; TYPE_1__ context; struct drm_i915_error_object* batchbuffer; struct drm_i915_error_engine* next; } ;
typedef  int s64 ;
struct TYPE_13__ {struct intel_csr csr; } ;
struct TYPE_12__ {int release; int machine; } ;
struct TYPE_11__ {int name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRIVER_DATE ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int HZ ; 
 int FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int,int) ; 
 int NSEC_PER_USEC ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_error_state_buf*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_error_state_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_error_state_buf*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_error_state_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_error_state_buf*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_error_state_buf*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_error_state_buf*,struct drm_i915_error_engine const*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_error_state_buf*,char*,int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_error_state_buf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_error_state_buf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 struct timespec64 FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct drm_i915_error_state_buf*,TYPE_2__*,char*,struct drm_i915_error_object const*) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC25(struct drm_i915_error_state_buf *m,
			       struct i915_gpu_state *error)
{
	const struct drm_i915_error_engine *ee;
	struct timespec64 ts;
	int i, j;

	if (*error->error_msg)
		FUNC10(m, "%s\n", error->error_msg);
	FUNC10(m, "Kernel: %s %s\n",
		   FUNC14()->release,
		   FUNC14()->machine);
	FUNC10(m, "Driver: %s\n", DRIVER_DATE);
	ts = FUNC20(error->time);
	FUNC10(m, "Time: %lld s %ld us\n",
		   (s64)ts.tv_sec, ts.tv_nsec / NSEC_PER_USEC);
	ts = FUNC20(error->boottime);
	FUNC10(m, "Boottime: %lld s %ld us\n",
		   (s64)ts.tv_sec, ts.tv_nsec / NSEC_PER_USEC);
	ts = FUNC20(error->uptime);
	FUNC10(m, "Uptime: %lld s %ld us\n",
		   (s64)ts.tv_sec, ts.tv_nsec / NSEC_PER_USEC);
	FUNC10(m, "Epoch: %lu jiffies (%u HZ)\n", error->epoch, HZ);
	FUNC10(m, "Capture: %lu jiffies; %d ms ago, %d ms after epoch\n",
		   error->capture,
		   FUNC19(jiffies - error->capture),
		   FUNC19(error->capture - error->epoch));

	for (ee = error->engine; ee; ee = ee->next)
		FUNC10(m, "Active process (on ring %s): %s [%d]\n",
			   ee->engine->name,
			   ee->context.comm,
			   ee->context.pid);

	FUNC10(m, "Reset count: %u\n", error->reset_count);
	FUNC10(m, "Suspend count: %u\n", error->suspend_count);
	FUNC10(m, "Platform: %s\n", FUNC17(error->device_info.platform));
	FUNC10(m, "Subplatform: 0x%x\n",
		   FUNC18(&error->runtime_info,
				     error->device_info.platform));
	FUNC8(m, m->i915);

	FUNC10(m, "IOMMU enabled?: %d\n", error->iommu);

	if (FUNC2(m->i915)) {
		struct intel_csr *csr = &m->i915->csr;

		FUNC10(m, "DMC loaded: %s\n",
			   FUNC24(csr->dmc_payload != NULL));
		FUNC10(m, "DMC fw version: %d.%d\n",
			   FUNC0(csr->version),
			   FUNC1(csr->version));
	}

	FUNC10(m, "GT awake: %s\n", FUNC24(error->awake));
	FUNC10(m, "RPM wakelock: %s\n", FUNC24(error->wakelock));
	FUNC10(m, "PM suspended: %s\n", FUNC24(error->suspended));
	FUNC10(m, "EIR: 0x%08x\n", error->eir);
	FUNC10(m, "IER: 0x%08x\n", error->ier);
	for (i = 0; i < error->ngtier; i++)
		FUNC10(m, "GTIER[%d]: 0x%08x\n", i, error->gtier[i]);
	FUNC10(m, "PGTBL_ER: 0x%08x\n", error->pgtbl_er);
	FUNC10(m, "FORCEWAKE: 0x%08x\n", error->forcewake);
	FUNC10(m, "DERRMR: 0x%08x\n", error->derrmr);
	FUNC10(m, "CCID: 0x%08x\n", error->ccid);

	for (i = 0; i < error->nfence; i++)
		FUNC10(m, "  fence[%d] = %08llx\n", i, error->fence[i]);

	if (FUNC5(m->i915, 6, 11)) {
		FUNC10(m, "ERROR: 0x%08x\n", error->error);
		FUNC10(m, "DONE_REG: 0x%08x\n", error->done_reg);
	}

	if (FUNC3(m->i915) >= 8)
		FUNC10(m, "FAULT_TLB_DATA: 0x%08x 0x%08x\n",
			   error->fault_data1, error->fault_data0);

	if (FUNC4(m->i915, 7))
		FUNC10(m, "ERR_INT: 0x%08x\n", error->err_int);

	for (ee = error->engine; ee; ee = ee->next)
		FUNC12(m, ee, error->epoch);

	for (ee = error->engine; ee; ee = ee->next) {
		const struct drm_i915_error_object *obj;

		obj = ee->batchbuffer;
		if (obj) {
			FUNC11(m, ee->engine->name);
			if (ee->context.pid)
				FUNC10(m, " (submitted by %s [%d])",
					   ee->context.comm,
					   ee->context.pid);
			FUNC10(m, " --- gtt_offset = 0x%08x %08x\n",
				   FUNC23(obj->gtt_offset),
				   FUNC21(obj->gtt_offset));
			FUNC22(m, ee->engine, NULL, obj);
		}

		for (j = 0; j < ee->user_bo_count; j++)
			FUNC22(m, ee->engine, "user", ee->user_bo[j]);

		if (ee->num_requests) {
			FUNC10(m, "%s --- %d requests\n",
				   ee->engine->name,
				   ee->num_requests);
			for (j = 0; j < ee->num_requests; j++)
				FUNC13(m, " ",
						    &ee->requests[j],
						    error->epoch);
		}

		FUNC22(m, ee->engine, "ringbuffer", ee->ringbuffer);
		FUNC22(m, ee->engine, "HW Status", ee->hws_page);
		FUNC22(m, ee->engine, "HW context", ee->ctx);
		FUNC22(m, ee->engine, "WA context", ee->wa_ctx);
		FUNC22(m, ee->engine,
				"WA batchbuffer", ee->wa_batchbuffer);
		FUNC22(m, ee->engine,
				"NULL context", ee->default_state);
	}

	if (error->overlay)
		FUNC16(m, error->overlay);

	if (error->display)
		FUNC15(m, error->display);

	FUNC6(m, &error->device_info, &error->runtime_info,
			       &error->driver_caps);
	FUNC7(m, &error->params);
	FUNC9(m, &error->uc);
}