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
struct kfd_process_device_apertures {size_t gpu_id; size_t lds_base; size_t lds_limit; size_t gpuvm_base; size_t gpuvm_limit; size_t scratch_base; size_t scratch_limit; } ;
struct kfd_process_device {size_t lds_base; size_t lds_limit; size_t gpuvm_base; size_t gpuvm_limit; size_t scratch_base; size_t scratch_limit; TYPE_1__* dev; } ;
struct kfd_process {size_t pasid; int /*<<< orphan*/  mutex; } ;
struct kfd_ioctl_get_process_apertures_args {size_t num_of_nodes; struct kfd_process_device_apertures* process_apertures; } ;
struct file {int dummy; } ;
struct TYPE_2__ {size_t id; } ;

/* Variables and functions */
 size_t NUM_OF_SUPPORTED_GPUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  kfd_device ; 
 struct kfd_process_device* FUNC1 (struct kfd_process*) ; 
 struct kfd_process_device* FUNC2 (struct kfd_process*,struct kfd_process_device*) ; 
 scalar_t__ FUNC3 (struct kfd_process*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct file *filp,
				struct kfd_process *p, void *data)
{
	struct kfd_ioctl_get_process_apertures_args *args = data;
	struct kfd_process_device_apertures *pAperture;
	struct kfd_process_device *pdd;

	FUNC0(kfd_device, "get apertures for PASID %d", p->pasid);

	args->num_of_nodes = 0;

	FUNC4(&p->mutex);

	/*if the process-device list isn't empty*/
	if (FUNC3(p)) {
		/* Run over all pdd of the process */
		pdd = FUNC1(p);
		do {
			pAperture =
				&args->process_apertures[args->num_of_nodes];
			pAperture->gpu_id = pdd->dev->id;
			pAperture->lds_base = pdd->lds_base;
			pAperture->lds_limit = pdd->lds_limit;
			pAperture->gpuvm_base = pdd->gpuvm_base;
			pAperture->gpuvm_limit = pdd->gpuvm_limit;
			pAperture->scratch_base = pdd->scratch_base;
			pAperture->scratch_limit = pdd->scratch_limit;

			FUNC0(kfd_device,
				"node id %u\n", args->num_of_nodes);
			FUNC0(kfd_device,
				"gpu id %u\n", pdd->dev->id);
			FUNC0(kfd_device,
				"lds_base %llX\n", pdd->lds_base);
			FUNC0(kfd_device,
				"lds_limit %llX\n", pdd->lds_limit);
			FUNC0(kfd_device,
				"gpuvm_base %llX\n", pdd->gpuvm_base);
			FUNC0(kfd_device,
				"gpuvm_limit %llX\n", pdd->gpuvm_limit);
			FUNC0(kfd_device,
				"scratch_base %llX\n", pdd->scratch_base);
			FUNC0(kfd_device,
				"scratch_limit %llX\n", pdd->scratch_limit);

			args->num_of_nodes++;

			pdd = FUNC2(p, pdd);
		} while (pdd && (args->num_of_nodes < NUM_OF_SUPPORTED_GPUS));
	}

	FUNC5(&p->mutex);

	return 0;
}