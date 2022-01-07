; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_sync_point_perfmon_sample_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_sync_point_perfmon_sample_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32 }
%struct.etnaviv_event = type { %struct.etnaviv_gem_submit* }
%struct.etnaviv_gem_submit = type { i32, %struct.etnaviv_perfmon_request* }
%struct.etnaviv_perfmon_request = type { i32, i32* }

@ETNA_PM_PROCESS_POST = common dso_local global i32 0, align 4
@VIVS_HI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS = common dso_local global i32 0, align 4
@VIVS_PM_POWER_CONTROLS = common dso_local global i32 0, align 4
@VIVS_PM_POWER_CONTROLS_ENABLE_MODULE_CLOCK_GATING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gpu*, %struct.etnaviv_event*)* @sync_point_perfmon_sample_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_point_perfmon_sample_post(%struct.etnaviv_gpu* %0, %struct.etnaviv_event* %1) #0 {
  %3 = alloca %struct.etnaviv_gpu*, align 8
  %4 = alloca %struct.etnaviv_event*, align 8
  %5 = alloca %struct.etnaviv_gem_submit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.etnaviv_perfmon_request*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %3, align 8
  store %struct.etnaviv_event* %1, %struct.etnaviv_event** %4, align 8
  %9 = load %struct.etnaviv_event*, %struct.etnaviv_event** %4, align 8
  %10 = getelementptr inbounds %struct.etnaviv_event, %struct.etnaviv_event* %9, i32 0, i32 0
  %11 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %10, align 8
  store %struct.etnaviv_gem_submit* %11, %struct.etnaviv_gem_submit** %5, align 8
  %12 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %13 = load %struct.etnaviv_event*, %struct.etnaviv_event** %4, align 8
  %14 = load i32, i32* @ETNA_PM_PROCESS_POST, align 4
  %15 = call i32 @sync_point_perfmon_sample(%struct.etnaviv_gpu* %12, %struct.etnaviv_event* %13, i32 %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %35, %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %5, align 8
  %19 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %5, align 8
  %24 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %23, i32 0, i32 1
  %25 = load %struct.etnaviv_perfmon_request*, %struct.etnaviv_perfmon_request** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.etnaviv_perfmon_request, %struct.etnaviv_perfmon_request* %25, i64 %27
  store %struct.etnaviv_perfmon_request* %28, %struct.etnaviv_perfmon_request** %8, align 8
  %29 = load %struct.etnaviv_perfmon_request*, %struct.etnaviv_perfmon_request** %8, align 8
  %30 = getelementptr inbounds %struct.etnaviv_perfmon_request, %struct.etnaviv_perfmon_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.etnaviv_perfmon_request*, %struct.etnaviv_perfmon_request** %8, align 8
  %33 = getelementptr inbounds %struct.etnaviv_perfmon_request, %struct.etnaviv_perfmon_request* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %16

38:                                               ; preds = %16
  %39 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %40 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %41 = call i32 @gpu_read(%struct.etnaviv_gpu* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %46 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @gpu_write(%struct.etnaviv_gpu* %45, i32 %46, i32 %47)
  %49 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %50 = load i32, i32* @VIVS_PM_POWER_CONTROLS, align 4
  %51 = call i32 @gpu_read(%struct.etnaviv_gpu* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @VIVS_PM_POWER_CONTROLS_ENABLE_MODULE_CLOCK_GATING, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %56 = load i32, i32* @VIVS_PM_POWER_CONTROLS, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @gpu_write(%struct.etnaviv_gpu* %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @sync_point_perfmon_sample(%struct.etnaviv_gpu*, %struct.etnaviv_event*, i32) #1

declare dso_local i32 @gpu_read(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @gpu_write(%struct.etnaviv_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
