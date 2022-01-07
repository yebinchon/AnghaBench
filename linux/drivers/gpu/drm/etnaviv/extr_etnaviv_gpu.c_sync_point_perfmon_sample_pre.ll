; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_sync_point_perfmon_sample_pre.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_sync_point_perfmon_sample_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32 }
%struct.etnaviv_event = type { i32 }

@VIVS_PM_POWER_CONTROLS = common dso_local global i32 0, align 4
@VIVS_PM_POWER_CONTROLS_ENABLE_MODULE_CLOCK_GATING = common dso_local global i32 0, align 4
@VIVS_HI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS = common dso_local global i32 0, align 4
@ETNA_PM_PROCESS_PRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gpu*, %struct.etnaviv_event*)* @sync_point_perfmon_sample_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_point_perfmon_sample_pre(%struct.etnaviv_gpu* %0, %struct.etnaviv_event* %1) #0 {
  %3 = alloca %struct.etnaviv_gpu*, align 8
  %4 = alloca %struct.etnaviv_event*, align 8
  %5 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %3, align 8
  store %struct.etnaviv_event* %1, %struct.etnaviv_event** %4, align 8
  %6 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %7 = load i32, i32* @VIVS_PM_POWER_CONTROLS, align 4
  %8 = call i32 @gpu_read(%struct.etnaviv_gpu* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @VIVS_PM_POWER_CONTROLS_ENABLE_MODULE_CLOCK_GATING, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %14 = load i32, i32* @VIVS_PM_POWER_CONTROLS, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @gpu_write(%struct.etnaviv_gpu* %13, i32 %14, i32 %15)
  %17 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %18 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %19 = call i32 @gpu_read(%struct.etnaviv_gpu* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %25 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @gpu_write(%struct.etnaviv_gpu* %24, i32 %25, i32 %26)
  %28 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %29 = load %struct.etnaviv_event*, %struct.etnaviv_event** %4, align 8
  %30 = load i32, i32* @ETNA_PM_PROCESS_PRE, align 4
  %31 = call i32 @sync_point_perfmon_sample(%struct.etnaviv_gpu* %28, %struct.etnaviv_event* %29, i32 %30)
  ret void
}

declare dso_local i32 @gpu_read(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @gpu_write(%struct.etnaviv_gpu*, i32, i32) #1

declare dso_local i32 @sync_point_perfmon_sample(%struct.etnaviv_gpu*, %struct.etnaviv_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
