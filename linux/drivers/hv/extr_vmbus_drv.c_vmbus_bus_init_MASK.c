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
typedef  int u64 ;
struct TYPE_2__ {int misc_features; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_ONLINE_DYN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HV_CRASH_CTL_CRASH_NOTIFY_MSG ; 
 int HV_FEATURE_GUEST_CRASH_MSR_AVAILABLE ; 
 int /*<<< orphan*/  VMBUS_MESSAGE_SINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hv_bus ; 
 int /*<<< orphan*/ * hv_ctl_table_hdr ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  hv_kmsg_dumper ; 
 void* hv_panic_page ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  hv_root_table ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  hv_synic_cleanup ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  hv_synic_init ; 
 int hyperv_cpuhp_online ; 
 int /*<<< orphan*/  hyperv_die_block ; 
 int /*<<< orphan*/  hyperv_panic_block ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_1__ ms_hyperv ; 
 int /*<<< orphan*/  panic_notifier_list ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 () ; 
 int /*<<< orphan*/  vmbus_isr ; 
 int /*<<< orphan*/  FUNC21 () ; 

__attribute__((used)) static int FUNC22(void)
{
	int ret;

	/* Hypervisor initialization...setup hypercall page..etc */
	ret = FUNC8();
	if (ret != 0) {
		FUNC16("Unable to initialize the hypervisor - 0x%x\n", ret);
		return ret;
	}

	ret = FUNC1(&hv_bus);
	if (ret)
		return ret;

	FUNC10(vmbus_isr);

	ret = FUNC13();
	if (ret)
		goto err_alloc;

	ret = FUNC11(VMBUS_MESSAGE_SINT);
	if (ret < 0)
		goto err_alloc;

	/*
	 * Initialize the per-cpu interrupt state and stimer state.
	 * Then connect to the host.
	 */
	ret = FUNC4(CPUHP_AP_ONLINE_DYN, "hyperv/vmbus:online",
				hv_synic_init, hv_synic_cleanup);
	if (ret < 0)
		goto err_cpuhp;
	hyperv_cpuhp_online = ret;

	ret = FUNC20();
	if (ret)
		goto err_connect;

	/*
	 * Only register if the crash MSRs are available
	 */
	if (ms_hyperv.misc_features & HV_FEATURE_GUEST_CRASH_MSR_AVAILABLE) {
		u64 hyperv_crash_ctl;
		/*
		 * Sysctl registration is not fatal, since by default
		 * reporting is enabled.
		 */
		hv_ctl_table_hdr = FUNC18(hv_root_table);
		if (!hv_ctl_table_hdr)
			FUNC16("Hyper-V: sysctl table register error");

		/*
		 * Register for panic kmsg callback only if the right
		 * capability is supported by the hypervisor.
		 */
		FUNC7(hyperv_crash_ctl);
		if (hyperv_crash_ctl & HV_CRASH_CTL_CRASH_NOTIFY_MSG) {
			hv_panic_page = (void *)FUNC6(GFP_KERNEL);
			if (hv_panic_page) {
				ret = FUNC15(&hv_kmsg_dumper);
				if (ret)
					FUNC16("Hyper-V: kmsg dump register "
						"error 0x%x\n", ret);
			} else
				FUNC16("Hyper-V: panic message page memory "
					"allocation failed");
		}

		FUNC17(&hyperv_die_block);
		FUNC0(&panic_notifier_list,
					       &hyperv_panic_block);
	}

	FUNC21();

	return 0;

err_connect:
	FUNC3(hyperv_cpuhp_online);
err_cpuhp:
	FUNC12();
err_alloc:
	FUNC14();
	FUNC9();

	FUNC2(&hv_bus);
	FUNC5((unsigned long)hv_panic_page);
	FUNC19(hv_ctl_table_hdr);
	hv_ctl_table_hdr = NULL;
	return ret;
}