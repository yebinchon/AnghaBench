; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_init_iba7322_funcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_init_iba7322_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.qib_devdata = type { i64, i32, i32, i32, %struct.TYPE_4__*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@NUM_IB_PORTS = common dso_local global i32 0, align 4
@qib_7322_bringup_serdes = common dso_local global i32 0, align 4
@qib_setup_7322_cleanup = common dso_local global i32 0, align 4
@qib_7322_clear_tids = common dso_local global i32 0, align 4
@qib_7322_free_irq = common dso_local global i32 0, align 4
@qib_7322_get_base_info = common dso_local global i32 0, align 4
@qib_7322_get_msgheader = common dso_local global i32 0, align 4
@qib_7322_getsendbuf = common dso_local global i32 0, align 4
@gpio_7322_mod = common dso_local global i32 0, align 4
@qib_7322_eeprom_wen = common dso_local global i32 0, align 4
@qib_7322_hdrqempty = common dso_local global i32 0, align 4
@qib_7322_ib_updown = common dso_local global i32 0, align 4
@qib_7322_init_ctxt = common dso_local global i32 0, align 4
@qib_7322_initvl15_bufs = common dso_local global i32 0, align 4
@qib_7322_intr_fallback = common dso_local global i32 0, align 4
@qib_late_7322_initreg = common dso_local global i32 0, align 4
@qib_7322_setpbc_control = common dso_local global i32 0, align 4
@qib_portcntr_7322 = common dso_local global i32 0, align 4
@qib_7322_put_tid = common dso_local global i32 0, align 4
@qib_7322_mini_quiet_serdes = common dso_local global i32 0, align 4
@rcvctrl_7322_mod = common dso_local global i32 0, align 4
@qib_read_7322cntrs = common dso_local global i32 0, align 4
@qib_read_7322portcntrs = common dso_local global i32 0, align 4
@qib_do_7322_reset = common dso_local global i32 0, align 4
@init_sdma_7322_regs = common dso_local global i32 0, align 4
@qib_sdma_7322_busy = common dso_local global i32 0, align 4
@qib_sdma_7322_gethead = common dso_local global i32 0, align 4
@qib_7322_sdma_sendctrl = common dso_local global i32 0, align 4
@qib_sdma_set_7322_desc_cnt = common dso_local global i32 0, align 4
@qib_sdma_update_7322_tail = common dso_local global i32 0, align 4
@sendctrl_7322_mod = common dso_local global i32 0, align 4
@qib_set_7322_armlaunch = common dso_local global i32 0, align 4
@qib_set_cntr_7322_sample = common dso_local global i32 0, align 4
@qib_7322_iblink_state = common dso_local global i32 0, align 4
@qib_7322_phys_portstate = common dso_local global i32 0, align 4
@qib_7322_get_ib_cfg = common dso_local global i32 0, align 4
@qib_7322_set_ib_cfg = common dso_local global i32 0, align 4
@qib_7322_set_loopback = common dso_local global i32 0, align 4
@qib_7322_get_ib_table = common dso_local global i32 0, align 4
@qib_7322_set_ib_table = common dso_local global i32 0, align 4
@qib_7322_set_intr_state = common dso_local global i32 0, align 4
@qib_setup_7322_setextled = common dso_local global i32 0, align 4
@qib_7322_txchk_change = common dso_local global i32 0, align 4
@qib_update_7322_usrhead = common dso_local global i32 0, align 4
@qib_wantpiobuf_7322_intr = common dso_local global i32 0, align 4
@qib_7322_mini_pcs_reset = common dso_local global i32 0, align 4
@qib_7322_sdma_hw_clean_up = common dso_local global i32 0, align 4
@qib_7322_sdma_hw_start_up = common dso_local global i32 0, align 4
@qib_7322_sdma_init_early = common dso_local global i32 0, align 4
@writescratch = common dso_local global i32 0, align 4
@qib_7322_tempsense_rd = common dso_local global i32 0, align 4
@qib_mini_init = common dso_local global i64 0, align 8
@irq_table = common dso_local global %struct.TYPE_5__* null, align 8
@qib_krcvq01_no_msi = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to setup PCIe or interrupts; continuing anyway\0A\00", align 1
@kr_hwdiagctrl = common dso_local global i32 0, align 4
@QIB_DCA_ENABLED = common dso_local global i32 0, align 4
@qib_7322_notify_dca = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qib_devdata* @qib_init_iba7322_funcs(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = load i32, i32* @NUM_IB_PORTS, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4
  %15 = load i32, i32* @NUM_IB_PORTS, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = add i64 %14, %17
  %19 = trunc i64 %18 to i32
  %20 = call %struct.qib_devdata* @qib_alloc_devdata(%struct.pci_dev* %10, i32 %19)
  store %struct.qib_devdata* %20, %struct.qib_devdata** %5, align 8
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %22 = call i64 @IS_ERR(%struct.qib_devdata* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %302

25:                                               ; preds = %2
  %26 = load i32, i32* @qib_7322_bringup_serdes, align 4
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 56
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @qib_setup_7322_cleanup, align 4
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %31 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %30, i32 0, i32 55
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @qib_7322_clear_tids, align 4
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %34 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %33, i32 0, i32 54
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @qib_7322_free_irq, align 4
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %37 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %36, i32 0, i32 53
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @qib_7322_get_base_info, align 4
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %40 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %39, i32 0, i32 52
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @qib_7322_get_msgheader, align 4
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %43 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %42, i32 0, i32 51
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @qib_7322_getsendbuf, align 4
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %46 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %45, i32 0, i32 50
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @gpio_7322_mod, align 4
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %49 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %48, i32 0, i32 49
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @qib_7322_eeprom_wen, align 4
  %51 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %52 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %51, i32 0, i32 48
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @qib_7322_hdrqempty, align 4
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 47
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @qib_7322_ib_updown, align 4
  %57 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %58 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %57, i32 0, i32 46
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @qib_7322_init_ctxt, align 4
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %61 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %60, i32 0, i32 45
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @qib_7322_initvl15_bufs, align 4
  %63 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %64 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %63, i32 0, i32 44
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @qib_7322_intr_fallback, align 4
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %67 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %66, i32 0, i32 43
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @qib_late_7322_initreg, align 4
  %69 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %70 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %69, i32 0, i32 42
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @qib_7322_setpbc_control, align 4
  %72 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %73 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %72, i32 0, i32 41
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @qib_portcntr_7322, align 4
  %75 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %76 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %75, i32 0, i32 40
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @qib_7322_put_tid, align 4
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %79 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %78, i32 0, i32 39
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @qib_7322_mini_quiet_serdes, align 4
  %81 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %82 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %81, i32 0, i32 38
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @rcvctrl_7322_mod, align 4
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %85 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %84, i32 0, i32 37
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @qib_read_7322cntrs, align 4
  %87 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %88 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %87, i32 0, i32 36
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @qib_read_7322portcntrs, align 4
  %90 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %91 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %90, i32 0, i32 35
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @qib_do_7322_reset, align 4
  %93 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %94 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %93, i32 0, i32 34
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @init_sdma_7322_regs, align 4
  %96 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %97 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %96, i32 0, i32 33
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @qib_sdma_7322_busy, align 4
  %99 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %100 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %99, i32 0, i32 32
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @qib_sdma_7322_gethead, align 4
  %102 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %103 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %102, i32 0, i32 31
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @qib_7322_sdma_sendctrl, align 4
  %105 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %106 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %105, i32 0, i32 30
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @qib_sdma_set_7322_desc_cnt, align 4
  %108 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %109 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %108, i32 0, i32 29
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @qib_sdma_update_7322_tail, align 4
  %111 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %112 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %111, i32 0, i32 28
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @sendctrl_7322_mod, align 4
  %114 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %115 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %114, i32 0, i32 27
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @qib_set_7322_armlaunch, align 4
  %117 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %118 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %117, i32 0, i32 26
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @qib_set_cntr_7322_sample, align 4
  %120 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %121 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %120, i32 0, i32 25
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @qib_7322_iblink_state, align 4
  %123 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %124 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %123, i32 0, i32 24
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @qib_7322_phys_portstate, align 4
  %126 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %127 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %126, i32 0, i32 23
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @qib_7322_get_ib_cfg, align 4
  %129 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %130 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %129, i32 0, i32 22
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @qib_7322_set_ib_cfg, align 4
  %132 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %133 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %132, i32 0, i32 21
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @qib_7322_set_loopback, align 4
  %135 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %136 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %135, i32 0, i32 20
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @qib_7322_get_ib_table, align 4
  %138 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %139 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %138, i32 0, i32 19
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @qib_7322_set_ib_table, align 4
  %141 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %142 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %141, i32 0, i32 18
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @qib_7322_set_intr_state, align 4
  %144 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %145 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %144, i32 0, i32 17
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @qib_setup_7322_setextled, align 4
  %147 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %148 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %147, i32 0, i32 16
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @qib_7322_txchk_change, align 4
  %150 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %151 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %150, i32 0, i32 15
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @qib_update_7322_usrhead, align 4
  %153 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %154 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %153, i32 0, i32 14
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @qib_wantpiobuf_7322_intr, align 4
  %156 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %157 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %156, i32 0, i32 13
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @qib_7322_mini_pcs_reset, align 4
  %159 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %160 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %159, i32 0, i32 12
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* @qib_7322_sdma_hw_clean_up, align 4
  %162 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %163 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %162, i32 0, i32 11
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @qib_7322_sdma_hw_start_up, align 4
  %165 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %166 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %165, i32 0, i32 10
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @qib_7322_sdma_init_early, align 4
  %168 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %169 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %168, i32 0, i32 9
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @writescratch, align 4
  %171 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %172 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %171, i32 0, i32 8
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* @qib_7322_tempsense_rd, align 4
  %174 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %175 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %174, i32 0, i32 7
  store i32 %173, i32* %175, align 4
  %176 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %177 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %178 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %179 = call i32 @qib_pcie_ddinit(%struct.qib_devdata* %176, %struct.pci_dev* %177, %struct.pci_device_id* %178)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %25
  br label %297

183:                                              ; preds = %25
  %184 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %185 = call i32 @qib_init_7322_variables(%struct.qib_devdata* %184)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %294

189:                                              ; preds = %183
  %190 = load i64, i64* @qib_mini_init, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %189
  %193 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %194 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %192, %189
  br label %302

198:                                              ; preds = %192
  %199 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %200 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** @irq_table, align 8
  %203 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %202)
  %204 = add nsw i32 %201, %203
  store i32 %204, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %205

205:                                              ; preds = %246, %198
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* %8, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %249

209:                                              ; preds = %205
  %210 = load i32, i32* %7, align 4
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** @irq_table, align 8
  %212 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %211)
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %225

214:                                              ; preds = %209
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** @irq_table, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %222 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp sle i64 %220, %223
  br i1 %224, label %242, label %225

225:                                              ; preds = %214, %209
  %226 = load i32, i32* %7, align 4
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** @irq_table, align 8
  %228 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %227)
  %229 = icmp sge i32 %226, %228
  br i1 %229, label %230, label %245

230:                                              ; preds = %225
  %231 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %232 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %231, i32 0, i32 5
  %233 = load i64*, i64** %232, align 8
  %234 = load i32, i32* %7, align 4
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** @irq_table, align 8
  %236 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %235)
  %237 = sub nsw i32 %234, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i64, i64* %233, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %230, %214
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %9, align 4
  br label %245

245:                                              ; preds = %242, %230, %225
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %7, align 4
  br label %205

249:                                              ; preds = %205
  %250 = load i64, i64* @qib_krcvq01_no_msi, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %249
  %253 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %254 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = sub nsw i64 %257, %255
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %9, align 4
  br label %260

260:                                              ; preds = %252, %249
  %261 = load i32, i32* %9, align 4
  store i32 %261, i32* %8, align 4
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* @GFP_KERNEL, align 4
  %264 = call i32 @kcalloc(i32 %262, i32 4, i32 %263)
  %265 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %266 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %265, i32 0, i32 4
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 1
  store i32 %264, i32* %268, align 4
  %269 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %270 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %269, i32 0, i32 4
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %260
  store i32 0, i32* %8, align 4
  br label %276

276:                                              ; preds = %275, %260
  %277 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %278 = call i64 @qib_pcie_params(%struct.qib_devdata* %277, i32 8, i32* %8)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %282 = call i32 @qib_dev_err(%struct.qib_devdata* %281, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %283

283:                                              ; preds = %280, %276
  %284 = load i32, i32* %8, align 4
  %285 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %286 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %285, i32 0, i32 4
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  store i32 %284, i32* %288, align 4
  %289 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %290 = call i32 @qib_setup_7322_interrupt(%struct.qib_devdata* %289, i32 1)
  %291 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %292 = load i32, i32* @kr_hwdiagctrl, align 4
  %293 = call i32 @qib_write_kreg(%struct.qib_devdata* %291, i32 %292, i32 0)
  br label %302

294:                                              ; preds = %188
  %295 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %296 = call i32 @qib_pcie_ddcleanup(%struct.qib_devdata* %295)
  br label %297

297:                                              ; preds = %294, %182
  %298 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %299 = call i32 @qib_free_devdata(%struct.qib_devdata* %298)
  %300 = load i32, i32* %6, align 4
  %301 = call %struct.qib_devdata* @ERR_PTR(i32 %300)
  store %struct.qib_devdata* %301, %struct.qib_devdata** %5, align 8
  br label %302

302:                                              ; preds = %297, %283, %197, %24
  %303 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  ret %struct.qib_devdata* %303
}

declare dso_local %struct.qib_devdata* @qib_alloc_devdata(%struct.pci_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.qib_devdata*) #1

declare dso_local i32 @qib_pcie_ddinit(%struct.qib_devdata*, %struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i32 @qib_init_7322_variables(%struct.qib_devdata*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i64 @qib_pcie_params(%struct.qib_devdata*, i32, i32*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @qib_setup_7322_interrupt(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_pcie_ddcleanup(%struct.qib_devdata*) #1

declare dso_local i32 @qib_free_devdata(%struct.qib_devdata*) #1

declare dso_local %struct.qib_devdata* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
