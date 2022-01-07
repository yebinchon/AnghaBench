; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_setup_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_setup_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ti_sci_ops }
%struct.ti_sci_ops = type { %struct.ti_sci_proc_ops, %struct.ti_sci_rm_udmap_ops, %struct.ti_sci_rm_psil_ops, %struct.ti_sci_rm_ringacc_ops, %struct.ti_sci_rm_irq_ops, %struct.ti_sci_rm_core_ops, %struct.ti_sci_clk_ops, %struct.ti_sci_dev_ops, %struct.ti_sci_core_ops }
%struct.ti_sci_proc_ops = type { i32, i32, i32, i32, i32, i32 }
%struct.ti_sci_rm_udmap_ops = type { i32, i32, i32 }
%struct.ti_sci_rm_psil_ops = type { i32, i32 }
%struct.ti_sci_rm_ringacc_ops = type { i32, i32 }
%struct.ti_sci_rm_irq_ops = type { i32, i32, i32, i32 }
%struct.ti_sci_rm_core_ops = type { i32, i32 }
%struct.ti_sci_clk_ops = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ti_sci_dev_ops = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ti_sci_core_ops = type { i32 }

@ti_sci_cmd_core_reboot = common dso_local global i32 0, align 4
@ti_sci_cmd_get_device = common dso_local global i32 0, align 4
@ti_sci_cmd_get_device_exclusive = common dso_local global i32 0, align 4
@ti_sci_cmd_idle_device = common dso_local global i32 0, align 4
@ti_sci_cmd_idle_device_exclusive = common dso_local global i32 0, align 4
@ti_sci_cmd_put_device = common dso_local global i32 0, align 4
@ti_sci_cmd_dev_is_valid = common dso_local global i32 0, align 4
@ti_sci_cmd_dev_get_clcnt = common dso_local global i32 0, align 4
@ti_sci_cmd_dev_is_idle = common dso_local global i32 0, align 4
@ti_sci_cmd_dev_is_stop = common dso_local global i32 0, align 4
@ti_sci_cmd_dev_is_on = common dso_local global i32 0, align 4
@ti_sci_cmd_dev_is_trans = common dso_local global i32 0, align 4
@ti_sci_cmd_set_device_resets = common dso_local global i32 0, align 4
@ti_sci_cmd_get_device_resets = common dso_local global i32 0, align 4
@ti_sci_cmd_get_clock = common dso_local global i32 0, align 4
@ti_sci_cmd_idle_clock = common dso_local global i32 0, align 4
@ti_sci_cmd_put_clock = common dso_local global i32 0, align 4
@ti_sci_cmd_clk_is_auto = common dso_local global i32 0, align 4
@ti_sci_cmd_clk_is_on = common dso_local global i32 0, align 4
@ti_sci_cmd_clk_is_off = common dso_local global i32 0, align 4
@ti_sci_cmd_clk_set_parent = common dso_local global i32 0, align 4
@ti_sci_cmd_clk_get_parent = common dso_local global i32 0, align 4
@ti_sci_cmd_clk_get_num_parents = common dso_local global i32 0, align 4
@ti_sci_cmd_clk_get_match_freq = common dso_local global i32 0, align 4
@ti_sci_cmd_clk_set_freq = common dso_local global i32 0, align 4
@ti_sci_cmd_clk_get_freq = common dso_local global i32 0, align 4
@ti_sci_cmd_get_resource_range = common dso_local global i32 0, align 4
@ti_sci_cmd_get_resource_range_from_shost = common dso_local global i32 0, align 4
@ti_sci_cmd_set_irq = common dso_local global i32 0, align 4
@ti_sci_cmd_set_event_map = common dso_local global i32 0, align 4
@ti_sci_cmd_free_irq = common dso_local global i32 0, align 4
@ti_sci_cmd_free_event_map = common dso_local global i32 0, align 4
@ti_sci_cmd_ring_config = common dso_local global i32 0, align 4
@ti_sci_cmd_ring_get_config = common dso_local global i32 0, align 4
@ti_sci_cmd_rm_psil_pair = common dso_local global i32 0, align 4
@ti_sci_cmd_rm_psil_unpair = common dso_local global i32 0, align 4
@ti_sci_cmd_rm_udmap_tx_ch_cfg = common dso_local global i32 0, align 4
@ti_sci_cmd_rm_udmap_rx_ch_cfg = common dso_local global i32 0, align 4
@ti_sci_cmd_rm_udmap_rx_flow_cfg = common dso_local global i32 0, align 4
@ti_sci_cmd_proc_request = common dso_local global i32 0, align 4
@ti_sci_cmd_proc_release = common dso_local global i32 0, align 4
@ti_sci_cmd_proc_handover = common dso_local global i32 0, align 4
@ti_sci_cmd_proc_set_config = common dso_local global i32 0, align 4
@ti_sci_cmd_proc_set_control = common dso_local global i32 0, align 4
@ti_sci_cmd_proc_get_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_sci_info*)* @ti_sci_setup_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_sci_setup_ops(%struct.ti_sci_info* %0) #0 {
  %2 = alloca %struct.ti_sci_info*, align 8
  %3 = alloca %struct.ti_sci_ops*, align 8
  %4 = alloca %struct.ti_sci_core_ops*, align 8
  %5 = alloca %struct.ti_sci_dev_ops*, align 8
  %6 = alloca %struct.ti_sci_clk_ops*, align 8
  %7 = alloca %struct.ti_sci_rm_core_ops*, align 8
  %8 = alloca %struct.ti_sci_rm_irq_ops*, align 8
  %9 = alloca %struct.ti_sci_rm_ringacc_ops*, align 8
  %10 = alloca %struct.ti_sci_rm_psil_ops*, align 8
  %11 = alloca %struct.ti_sci_rm_udmap_ops*, align 8
  %12 = alloca %struct.ti_sci_proc_ops*, align 8
  store %struct.ti_sci_info* %0, %struct.ti_sci_info** %2, align 8
  %13 = load %struct.ti_sci_info*, %struct.ti_sci_info** %2, align 8
  %14 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.ti_sci_ops* %15, %struct.ti_sci_ops** %3, align 8
  %16 = load %struct.ti_sci_ops*, %struct.ti_sci_ops** %3, align 8
  %17 = getelementptr inbounds %struct.ti_sci_ops, %struct.ti_sci_ops* %16, i32 0, i32 8
  store %struct.ti_sci_core_ops* %17, %struct.ti_sci_core_ops** %4, align 8
  %18 = load %struct.ti_sci_ops*, %struct.ti_sci_ops** %3, align 8
  %19 = getelementptr inbounds %struct.ti_sci_ops, %struct.ti_sci_ops* %18, i32 0, i32 7
  store %struct.ti_sci_dev_ops* %19, %struct.ti_sci_dev_ops** %5, align 8
  %20 = load %struct.ti_sci_ops*, %struct.ti_sci_ops** %3, align 8
  %21 = getelementptr inbounds %struct.ti_sci_ops, %struct.ti_sci_ops* %20, i32 0, i32 6
  store %struct.ti_sci_clk_ops* %21, %struct.ti_sci_clk_ops** %6, align 8
  %22 = load %struct.ti_sci_ops*, %struct.ti_sci_ops** %3, align 8
  %23 = getelementptr inbounds %struct.ti_sci_ops, %struct.ti_sci_ops* %22, i32 0, i32 5
  store %struct.ti_sci_rm_core_ops* %23, %struct.ti_sci_rm_core_ops** %7, align 8
  %24 = load %struct.ti_sci_ops*, %struct.ti_sci_ops** %3, align 8
  %25 = getelementptr inbounds %struct.ti_sci_ops, %struct.ti_sci_ops* %24, i32 0, i32 4
  store %struct.ti_sci_rm_irq_ops* %25, %struct.ti_sci_rm_irq_ops** %8, align 8
  %26 = load %struct.ti_sci_ops*, %struct.ti_sci_ops** %3, align 8
  %27 = getelementptr inbounds %struct.ti_sci_ops, %struct.ti_sci_ops* %26, i32 0, i32 3
  store %struct.ti_sci_rm_ringacc_ops* %27, %struct.ti_sci_rm_ringacc_ops** %9, align 8
  %28 = load %struct.ti_sci_ops*, %struct.ti_sci_ops** %3, align 8
  %29 = getelementptr inbounds %struct.ti_sci_ops, %struct.ti_sci_ops* %28, i32 0, i32 2
  store %struct.ti_sci_rm_psil_ops* %29, %struct.ti_sci_rm_psil_ops** %10, align 8
  %30 = load %struct.ti_sci_ops*, %struct.ti_sci_ops** %3, align 8
  %31 = getelementptr inbounds %struct.ti_sci_ops, %struct.ti_sci_ops* %30, i32 0, i32 1
  store %struct.ti_sci_rm_udmap_ops* %31, %struct.ti_sci_rm_udmap_ops** %11, align 8
  %32 = load %struct.ti_sci_ops*, %struct.ti_sci_ops** %3, align 8
  %33 = getelementptr inbounds %struct.ti_sci_ops, %struct.ti_sci_ops* %32, i32 0, i32 0
  store %struct.ti_sci_proc_ops* %33, %struct.ti_sci_proc_ops** %12, align 8
  %34 = load i32, i32* @ti_sci_cmd_core_reboot, align 4
  %35 = load %struct.ti_sci_core_ops*, %struct.ti_sci_core_ops** %4, align 8
  %36 = getelementptr inbounds %struct.ti_sci_core_ops, %struct.ti_sci_core_ops* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @ti_sci_cmd_get_device, align 4
  %38 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %5, align 8
  %39 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %38, i32 0, i32 12
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ti_sci_cmd_get_device_exclusive, align 4
  %41 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %5, align 8
  %42 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %41, i32 0, i32 11
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @ti_sci_cmd_idle_device, align 4
  %44 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %5, align 8
  %45 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %44, i32 0, i32 10
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @ti_sci_cmd_idle_device_exclusive, align 4
  %47 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %5, align 8
  %48 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ti_sci_cmd_put_device, align 4
  %50 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %5, align 8
  %51 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ti_sci_cmd_dev_is_valid, align 4
  %53 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %5, align 8
  %54 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @ti_sci_cmd_dev_get_clcnt, align 4
  %56 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %5, align 8
  %57 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @ti_sci_cmd_dev_is_idle, align 4
  %59 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %5, align 8
  %60 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @ti_sci_cmd_dev_is_stop, align 4
  %62 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %5, align 8
  %63 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @ti_sci_cmd_dev_is_on, align 4
  %65 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %5, align 8
  %66 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @ti_sci_cmd_dev_is_trans, align 4
  %68 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %5, align 8
  %69 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @ti_sci_cmd_set_device_resets, align 4
  %71 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %5, align 8
  %72 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @ti_sci_cmd_get_device_resets, align 4
  %74 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %5, align 8
  %75 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @ti_sci_cmd_get_clock, align 4
  %77 = load %struct.ti_sci_clk_ops*, %struct.ti_sci_clk_ops** %6, align 8
  %78 = getelementptr inbounds %struct.ti_sci_clk_ops, %struct.ti_sci_clk_ops* %77, i32 0, i32 11
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @ti_sci_cmd_idle_clock, align 4
  %80 = load %struct.ti_sci_clk_ops*, %struct.ti_sci_clk_ops** %6, align 8
  %81 = getelementptr inbounds %struct.ti_sci_clk_ops, %struct.ti_sci_clk_ops* %80, i32 0, i32 10
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @ti_sci_cmd_put_clock, align 4
  %83 = load %struct.ti_sci_clk_ops*, %struct.ti_sci_clk_ops** %6, align 8
  %84 = getelementptr inbounds %struct.ti_sci_clk_ops, %struct.ti_sci_clk_ops* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @ti_sci_cmd_clk_is_auto, align 4
  %86 = load %struct.ti_sci_clk_ops*, %struct.ti_sci_clk_ops** %6, align 8
  %87 = getelementptr inbounds %struct.ti_sci_clk_ops, %struct.ti_sci_clk_ops* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @ti_sci_cmd_clk_is_on, align 4
  %89 = load %struct.ti_sci_clk_ops*, %struct.ti_sci_clk_ops** %6, align 8
  %90 = getelementptr inbounds %struct.ti_sci_clk_ops, %struct.ti_sci_clk_ops* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @ti_sci_cmd_clk_is_off, align 4
  %92 = load %struct.ti_sci_clk_ops*, %struct.ti_sci_clk_ops** %6, align 8
  %93 = getelementptr inbounds %struct.ti_sci_clk_ops, %struct.ti_sci_clk_ops* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @ti_sci_cmd_clk_set_parent, align 4
  %95 = load %struct.ti_sci_clk_ops*, %struct.ti_sci_clk_ops** %6, align 8
  %96 = getelementptr inbounds %struct.ti_sci_clk_ops, %struct.ti_sci_clk_ops* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @ti_sci_cmd_clk_get_parent, align 4
  %98 = load %struct.ti_sci_clk_ops*, %struct.ti_sci_clk_ops** %6, align 8
  %99 = getelementptr inbounds %struct.ti_sci_clk_ops, %struct.ti_sci_clk_ops* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @ti_sci_cmd_clk_get_num_parents, align 4
  %101 = load %struct.ti_sci_clk_ops*, %struct.ti_sci_clk_ops** %6, align 8
  %102 = getelementptr inbounds %struct.ti_sci_clk_ops, %struct.ti_sci_clk_ops* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @ti_sci_cmd_clk_get_match_freq, align 4
  %104 = load %struct.ti_sci_clk_ops*, %struct.ti_sci_clk_ops** %6, align 8
  %105 = getelementptr inbounds %struct.ti_sci_clk_ops, %struct.ti_sci_clk_ops* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @ti_sci_cmd_clk_set_freq, align 4
  %107 = load %struct.ti_sci_clk_ops*, %struct.ti_sci_clk_ops** %6, align 8
  %108 = getelementptr inbounds %struct.ti_sci_clk_ops, %struct.ti_sci_clk_ops* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @ti_sci_cmd_clk_get_freq, align 4
  %110 = load %struct.ti_sci_clk_ops*, %struct.ti_sci_clk_ops** %6, align 8
  %111 = getelementptr inbounds %struct.ti_sci_clk_ops, %struct.ti_sci_clk_ops* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @ti_sci_cmd_get_resource_range, align 4
  %113 = load %struct.ti_sci_rm_core_ops*, %struct.ti_sci_rm_core_ops** %7, align 8
  %114 = getelementptr inbounds %struct.ti_sci_rm_core_ops, %struct.ti_sci_rm_core_ops* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @ti_sci_cmd_get_resource_range_from_shost, align 4
  %116 = load %struct.ti_sci_rm_core_ops*, %struct.ti_sci_rm_core_ops** %7, align 8
  %117 = getelementptr inbounds %struct.ti_sci_rm_core_ops, %struct.ti_sci_rm_core_ops* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @ti_sci_cmd_set_irq, align 4
  %119 = load %struct.ti_sci_rm_irq_ops*, %struct.ti_sci_rm_irq_ops** %8, align 8
  %120 = getelementptr inbounds %struct.ti_sci_rm_irq_ops, %struct.ti_sci_rm_irq_ops* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @ti_sci_cmd_set_event_map, align 4
  %122 = load %struct.ti_sci_rm_irq_ops*, %struct.ti_sci_rm_irq_ops** %8, align 8
  %123 = getelementptr inbounds %struct.ti_sci_rm_irq_ops, %struct.ti_sci_rm_irq_ops* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @ti_sci_cmd_free_irq, align 4
  %125 = load %struct.ti_sci_rm_irq_ops*, %struct.ti_sci_rm_irq_ops** %8, align 8
  %126 = getelementptr inbounds %struct.ti_sci_rm_irq_ops, %struct.ti_sci_rm_irq_ops* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @ti_sci_cmd_free_event_map, align 4
  %128 = load %struct.ti_sci_rm_irq_ops*, %struct.ti_sci_rm_irq_ops** %8, align 8
  %129 = getelementptr inbounds %struct.ti_sci_rm_irq_ops, %struct.ti_sci_rm_irq_ops* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @ti_sci_cmd_ring_config, align 4
  %131 = load %struct.ti_sci_rm_ringacc_ops*, %struct.ti_sci_rm_ringacc_ops** %9, align 8
  %132 = getelementptr inbounds %struct.ti_sci_rm_ringacc_ops, %struct.ti_sci_rm_ringacc_ops* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @ti_sci_cmd_ring_get_config, align 4
  %134 = load %struct.ti_sci_rm_ringacc_ops*, %struct.ti_sci_rm_ringacc_ops** %9, align 8
  %135 = getelementptr inbounds %struct.ti_sci_rm_ringacc_ops, %struct.ti_sci_rm_ringacc_ops* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @ti_sci_cmd_rm_psil_pair, align 4
  %137 = load %struct.ti_sci_rm_psil_ops*, %struct.ti_sci_rm_psil_ops** %10, align 8
  %138 = getelementptr inbounds %struct.ti_sci_rm_psil_ops, %struct.ti_sci_rm_psil_ops* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @ti_sci_cmd_rm_psil_unpair, align 4
  %140 = load %struct.ti_sci_rm_psil_ops*, %struct.ti_sci_rm_psil_ops** %10, align 8
  %141 = getelementptr inbounds %struct.ti_sci_rm_psil_ops, %struct.ti_sci_rm_psil_ops* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @ti_sci_cmd_rm_udmap_tx_ch_cfg, align 4
  %143 = load %struct.ti_sci_rm_udmap_ops*, %struct.ti_sci_rm_udmap_ops** %11, align 8
  %144 = getelementptr inbounds %struct.ti_sci_rm_udmap_ops, %struct.ti_sci_rm_udmap_ops* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @ti_sci_cmd_rm_udmap_rx_ch_cfg, align 4
  %146 = load %struct.ti_sci_rm_udmap_ops*, %struct.ti_sci_rm_udmap_ops** %11, align 8
  %147 = getelementptr inbounds %struct.ti_sci_rm_udmap_ops, %struct.ti_sci_rm_udmap_ops* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @ti_sci_cmd_rm_udmap_rx_flow_cfg, align 4
  %149 = load %struct.ti_sci_rm_udmap_ops*, %struct.ti_sci_rm_udmap_ops** %11, align 8
  %150 = getelementptr inbounds %struct.ti_sci_rm_udmap_ops, %struct.ti_sci_rm_udmap_ops* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @ti_sci_cmd_proc_request, align 4
  %152 = load %struct.ti_sci_proc_ops*, %struct.ti_sci_proc_ops** %12, align 8
  %153 = getelementptr inbounds %struct.ti_sci_proc_ops, %struct.ti_sci_proc_ops* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @ti_sci_cmd_proc_release, align 4
  %155 = load %struct.ti_sci_proc_ops*, %struct.ti_sci_proc_ops** %12, align 8
  %156 = getelementptr inbounds %struct.ti_sci_proc_ops, %struct.ti_sci_proc_ops* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* @ti_sci_cmd_proc_handover, align 4
  %158 = load %struct.ti_sci_proc_ops*, %struct.ti_sci_proc_ops** %12, align 8
  %159 = getelementptr inbounds %struct.ti_sci_proc_ops, %struct.ti_sci_proc_ops* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @ti_sci_cmd_proc_set_config, align 4
  %161 = load %struct.ti_sci_proc_ops*, %struct.ti_sci_proc_ops** %12, align 8
  %162 = getelementptr inbounds %struct.ti_sci_proc_ops, %struct.ti_sci_proc_ops* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @ti_sci_cmd_proc_set_control, align 4
  %164 = load %struct.ti_sci_proc_ops*, %struct.ti_sci_proc_ops** %12, align 8
  %165 = getelementptr inbounds %struct.ti_sci_proc_ops, %struct.ti_sci_proc_ops* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @ti_sci_cmd_proc_get_status, align 4
  %167 = load %struct.ti_sci_proc_ops*, %struct.ti_sci_proc_ops** %12, align 8
  %168 = getelementptr inbounds %struct.ti_sci_proc_ops, %struct.ti_sci_proc_ops* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
