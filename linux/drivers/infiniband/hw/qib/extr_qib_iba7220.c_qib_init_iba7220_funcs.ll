; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_init_iba7220_funcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_init_iba7220_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@qib_7220_bringup_serdes = common dso_local global i32 0, align 4
@qib_setup_7220_cleanup = common dso_local global i32 0, align 4
@qib_7220_clear_tids = common dso_local global i32 0, align 4
@qib_free_irq = common dso_local global i32 0, align 4
@qib_7220_get_base_info = common dso_local global i32 0, align 4
@qib_7220_get_msgheader = common dso_local global i32 0, align 4
@qib_7220_getsendbuf = common dso_local global i32 0, align 4
@gpio_7220_mod = common dso_local global i32 0, align 4
@qib_7220_eeprom_wen = common dso_local global i32 0, align 4
@qib_7220_hdrqempty = common dso_local global i32 0, align 4
@qib_7220_ib_updown = common dso_local global i32 0, align 4
@qib_7220_init_ctxt = common dso_local global i32 0, align 4
@qib_7220_initvl15_bufs = common dso_local global i32 0, align 4
@qib_7220_intr_fallback = common dso_local global i32 0, align 4
@qib_late_7220_initreg = common dso_local global i32 0, align 4
@qib_7220_setpbc_control = common dso_local global i32 0, align 4
@qib_portcntr_7220 = common dso_local global i32 0, align 4
@qib_7220_put_tid = common dso_local global i32 0, align 4
@qib_7220_quiet_serdes = common dso_local global i32 0, align 4
@rcvctrl_7220_mod = common dso_local global i32 0, align 4
@qib_read_7220cntrs = common dso_local global i32 0, align 4
@qib_read_7220portcntrs = common dso_local global i32 0, align 4
@qib_setup_7220_reset = common dso_local global i32 0, align 4
@init_sdma_7220_regs = common dso_local global i32 0, align 4
@qib_sdma_7220_busy = common dso_local global i32 0, align 4
@qib_sdma_7220_gethead = common dso_local global i32 0, align 4
@qib_7220_sdma_sendctrl = common dso_local global i32 0, align 4
@qib_sdma_set_7220_desc_cnt = common dso_local global i32 0, align 4
@qib_sdma_update_7220_tail = common dso_local global i32 0, align 4
@qib_7220_sdma_hw_clean_up = common dso_local global i32 0, align 4
@qib_7220_sdma_hw_start_up = common dso_local global i32 0, align 4
@qib_7220_sdma_init_early = common dso_local global i32 0, align 4
@sendctrl_7220_mod = common dso_local global i32 0, align 4
@qib_set_7220_armlaunch = common dso_local global i32 0, align 4
@qib_set_cntr_7220_sample = common dso_local global i32 0, align 4
@qib_7220_iblink_state = common dso_local global i32 0, align 4
@qib_7220_phys_portstate = common dso_local global i32 0, align 4
@qib_7220_get_ib_cfg = common dso_local global i32 0, align 4
@qib_7220_set_ib_cfg = common dso_local global i32 0, align 4
@qib_7220_set_loopback = common dso_local global i32 0, align 4
@qib_7220_set_intr_state = common dso_local global i32 0, align 4
@qib_setup_7220_setextled = common dso_local global i32 0, align 4
@qib_7220_txchk_change = common dso_local global i32 0, align 4
@qib_update_7220_usrhead = common dso_local global i32 0, align 4
@qib_wantpiobuf_7220_intr = common dso_local global i32 0, align 4
@qib_7220_xgxs_reset = common dso_local global i32 0, align 4
@writescratch = common dso_local global i32 0, align 4
@qib_7220_tempsense_rd = common dso_local global i32 0, align 4
@qib_mini_init = common dso_local global i64 0, align 8
@Revision = common dso_local global i32 0, align 4
@BoardID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to setup PCIe or interrupts; continuing anyway\0A\00", align 1
@kr_hwerrstatus = common dso_local global i32 0, align 4
@QLOGIC_IB_HWE_SERDESPLLFAILED = common dso_local global i32 0, align 4
@kr_hwerrclear = common dso_local global i32 0, align 4
@kr_hwdiagctrl = common dso_local global i32 0, align 4
@qib_7220_notify_dca = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qib_devdata* @qib_init_iba7220_funcs(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = call %struct.qib_devdata* @qib_alloc_devdata(%struct.pci_dev* %9, i32 8)
  store %struct.qib_devdata* %10, %struct.qib_devdata** %5, align 8
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %12 = call i64 @IS_ERR(%struct.qib_devdata* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %223

15:                                               ; preds = %2
  %16 = load i32, i32* @qib_7220_bringup_serdes, align 4
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %18 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %17, i32 0, i32 49
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @qib_setup_7220_cleanup, align 4
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %21 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %20, i32 0, i32 48
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @qib_7220_clear_tids, align 4
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %24 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %23, i32 0, i32 47
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @qib_free_irq, align 4
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 46
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @qib_7220_get_base_info, align 4
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %30 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %29, i32 0, i32 45
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @qib_7220_get_msgheader, align 4
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %33 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %32, i32 0, i32 44
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @qib_7220_getsendbuf, align 4
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %36 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %35, i32 0, i32 43
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @gpio_7220_mod, align 4
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %39 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %38, i32 0, i32 42
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @qib_7220_eeprom_wen, align 4
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %42 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %41, i32 0, i32 41
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @qib_7220_hdrqempty, align 4
  %44 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %45 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %44, i32 0, i32 40
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @qib_7220_ib_updown, align 4
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %48 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %47, i32 0, i32 39
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @qib_7220_init_ctxt, align 4
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %51 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %50, i32 0, i32 38
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @qib_7220_initvl15_bufs, align 4
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %54 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %53, i32 0, i32 37
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @qib_7220_intr_fallback, align 4
  %56 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %57 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %56, i32 0, i32 36
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @qib_late_7220_initreg, align 4
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %60 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %59, i32 0, i32 35
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @qib_7220_setpbc_control, align 4
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 34
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @qib_portcntr_7220, align 4
  %65 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %66 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %65, i32 0, i32 33
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @qib_7220_put_tid, align 4
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %69 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %68, i32 0, i32 32
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @qib_7220_quiet_serdes, align 4
  %71 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %72 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %71, i32 0, i32 31
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @rcvctrl_7220_mod, align 4
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %75 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %74, i32 0, i32 30
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @qib_read_7220cntrs, align 4
  %77 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %78 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %77, i32 0, i32 29
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @qib_read_7220portcntrs, align 4
  %80 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %81 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %80, i32 0, i32 28
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @qib_setup_7220_reset, align 4
  %83 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %84 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %83, i32 0, i32 27
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @init_sdma_7220_regs, align 4
  %86 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %87 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %86, i32 0, i32 26
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @qib_sdma_7220_busy, align 4
  %89 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %90 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %89, i32 0, i32 25
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @qib_sdma_7220_gethead, align 4
  %92 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %93 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %92, i32 0, i32 24
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @qib_7220_sdma_sendctrl, align 4
  %95 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %96 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %95, i32 0, i32 23
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @qib_sdma_set_7220_desc_cnt, align 4
  %98 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %99 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %98, i32 0, i32 22
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @qib_sdma_update_7220_tail, align 4
  %101 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %102 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %101, i32 0, i32 21
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @qib_7220_sdma_hw_clean_up, align 4
  %104 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %105 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %104, i32 0, i32 20
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @qib_7220_sdma_hw_start_up, align 4
  %107 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %108 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %107, i32 0, i32 19
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @qib_7220_sdma_init_early, align 4
  %110 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %111 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %110, i32 0, i32 18
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @sendctrl_7220_mod, align 4
  %113 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %114 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %113, i32 0, i32 17
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @qib_set_7220_armlaunch, align 4
  %116 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %117 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %116, i32 0, i32 16
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @qib_set_cntr_7220_sample, align 4
  %119 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %120 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %119, i32 0, i32 15
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @qib_7220_iblink_state, align 4
  %122 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %123 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %122, i32 0, i32 14
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @qib_7220_phys_portstate, align 4
  %125 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %126 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %125, i32 0, i32 13
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @qib_7220_get_ib_cfg, align 4
  %128 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %129 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %128, i32 0, i32 12
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @qib_7220_set_ib_cfg, align 4
  %131 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %132 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %131, i32 0, i32 11
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @qib_7220_set_loopback, align 4
  %134 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %135 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %134, i32 0, i32 10
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @qib_7220_set_intr_state, align 4
  %137 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %138 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %137, i32 0, i32 9
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @qib_setup_7220_setextled, align 4
  %140 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %141 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %140, i32 0, i32 8
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @qib_7220_txchk_change, align 4
  %143 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %144 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @qib_update_7220_usrhead, align 4
  %146 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %147 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %146, i32 0, i32 6
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @qib_wantpiobuf_7220_intr, align 4
  %149 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %150 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @qib_7220_xgxs_reset, align 4
  %152 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %153 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @writescratch, align 4
  %155 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %156 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* @qib_7220_tempsense_rd, align 4
  %158 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %159 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  %160 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %161 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %162 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %163 = call i32 @qib_pcie_ddinit(%struct.qib_devdata* %160, %struct.pci_dev* %161, %struct.pci_device_id* %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %15
  br label %218

167:                                              ; preds = %15
  %168 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %169 = call i32 @qib_init_7220_variables(%struct.qib_devdata* %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %215

173:                                              ; preds = %167
  %174 = load i64, i64* @qib_mini_init, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  br label %223

177:                                              ; preds = %173
  %178 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %179 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @Revision, align 4
  %182 = load i32, i32* @BoardID, align 4
  %183 = call i32 @SYM_FIELD(i32 %180, i32 %181, i32 %182)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  switch i32 %184, label %186 [
    i32 0, label %185
    i32 2, label %185
    i32 10, label %185
    i32 12, label %185
  ]

185:                                              ; preds = %177, %177, %177, %177
  store i32 16, i32* %8, align 4
  br label %187

186:                                              ; preds = %177
  store i32 8, i32* %8, align 4
  br label %187

187:                                              ; preds = %186, %185
  %188 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %189 = load i32, i32* %8, align 4
  %190 = call i64 @qib_pcie_params(%struct.qib_devdata* %188, i32 %189, i32* null)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %194 = call i32 @qib_dev_err(%struct.qib_devdata* %193, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %195

195:                                              ; preds = %192, %187
  %196 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %197 = load i32, i32* @kr_hwerrstatus, align 4
  %198 = call i32 @qib_read_kreg64(%struct.qib_devdata* %196, i32 %197)
  %199 = load i32, i32* @QLOGIC_IB_HWE_SERDESPLLFAILED, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %195
  %203 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %204 = load i32, i32* @kr_hwerrclear, align 4
  %205 = load i32, i32* @QLOGIC_IB_HWE_SERDESPLLFAILED, align 4
  %206 = call i32 @qib_write_kreg(%struct.qib_devdata* %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %202, %195
  %208 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %209 = call i32 @qib_setup_7220_interrupt(%struct.qib_devdata* %208)
  %210 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %211 = call i32 @qib_7220_init_hwerrors(%struct.qib_devdata* %210)
  %212 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %213 = load i32, i32* @kr_hwdiagctrl, align 4
  %214 = call i32 @qib_write_kreg(%struct.qib_devdata* %212, i32 %213, i32 0)
  br label %223

215:                                              ; preds = %172
  %216 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %217 = call i32 @qib_pcie_ddcleanup(%struct.qib_devdata* %216)
  br label %218

218:                                              ; preds = %215, %166
  %219 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %220 = call i32 @qib_free_devdata(%struct.qib_devdata* %219)
  %221 = load i32, i32* %6, align 4
  %222 = call %struct.qib_devdata* @ERR_PTR(i32 %221)
  store %struct.qib_devdata* %222, %struct.qib_devdata** %5, align 8
  br label %223

223:                                              ; preds = %218, %207, %176, %14
  %224 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  ret %struct.qib_devdata* %224
}

declare dso_local %struct.qib_devdata* @qib_alloc_devdata(%struct.pci_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.qib_devdata*) #1

declare dso_local i32 @qib_pcie_ddinit(%struct.qib_devdata*, %struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i32 @qib_init_7220_variables(%struct.qib_devdata*) #1

declare dso_local i32 @SYM_FIELD(i32, i32, i32) #1

declare dso_local i64 @qib_pcie_params(%struct.qib_devdata*, i32, i32*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_setup_7220_interrupt(%struct.qib_devdata*) #1

declare dso_local i32 @qib_7220_init_hwerrors(%struct.qib_devdata*) #1

declare dso_local i32 @qib_pcie_ddcleanup(%struct.qib_devdata*) #1

declare dso_local i32 @qib_free_devdata(%struct.qib_devdata*) #1

declare dso_local %struct.qib_devdata* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
