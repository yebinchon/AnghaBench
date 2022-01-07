; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_perf.c_dpu_core_perf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_perf.c_dpu_core_perf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_core_perf = type { i64, %struct.dss_clk*, %struct.dpu_mdss_cfg*, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.dpu_mdss_cfg = type { i32 }
%struct.dss_clk = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"optional max core clk rate, use default\0A\00", align 1
@DPU_PERF_DEFAULT_MAX_CORE_CLK_RATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpu_core_perf_init(%struct.dpu_core_perf* %0, %struct.drm_device* %1, %struct.dpu_mdss_cfg* %2, %struct.dss_clk* %3) #0 {
  %5 = alloca %struct.dpu_core_perf*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.dpu_mdss_cfg*, align 8
  %8 = alloca %struct.dss_clk*, align 8
  store %struct.dpu_core_perf* %0, %struct.dpu_core_perf** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.dpu_mdss_cfg* %2, %struct.dpu_mdss_cfg** %7, align 8
  store %struct.dss_clk* %3, %struct.dss_clk** %8, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %10 = load %struct.dpu_core_perf*, %struct.dpu_core_perf** %5, align 8
  %11 = getelementptr inbounds %struct.dpu_core_perf, %struct.dpu_core_perf* %10, i32 0, i32 3
  store %struct.drm_device* %9, %struct.drm_device** %11, align 8
  %12 = load %struct.dpu_mdss_cfg*, %struct.dpu_mdss_cfg** %7, align 8
  %13 = load %struct.dpu_core_perf*, %struct.dpu_core_perf** %5, align 8
  %14 = getelementptr inbounds %struct.dpu_core_perf, %struct.dpu_core_perf* %13, i32 0, i32 2
  store %struct.dpu_mdss_cfg* %12, %struct.dpu_mdss_cfg** %14, align 8
  %15 = load %struct.dss_clk*, %struct.dss_clk** %8, align 8
  %16 = load %struct.dpu_core_perf*, %struct.dpu_core_perf** %5, align 8
  %17 = getelementptr inbounds %struct.dpu_core_perf, %struct.dpu_core_perf* %16, i32 0, i32 1
  store %struct.dss_clk* %15, %struct.dss_clk** %17, align 8
  %18 = load %struct.dss_clk*, %struct.dss_clk** %8, align 8
  %19 = getelementptr inbounds %struct.dss_clk, %struct.dss_clk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dpu_core_perf*, %struct.dpu_core_perf** %5, align 8
  %22 = getelementptr inbounds %struct.dpu_core_perf, %struct.dpu_core_perf* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.dpu_core_perf*, %struct.dpu_core_perf** %5, align 8
  %24 = getelementptr inbounds %struct.dpu_core_perf, %struct.dpu_core_perf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %4
  %28 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* @DPU_PERF_DEFAULT_MAX_CORE_CLK_RATE, align 8
  %30 = load %struct.dpu_core_perf*, %struct.dpu_core_perf** %5, align 8
  %31 = getelementptr inbounds %struct.dpu_core_perf, %struct.dpu_core_perf* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %27, %4
  ret i32 0
}

declare dso_local i32 @DPU_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
