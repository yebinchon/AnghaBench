; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_perf.c__dpu_core_perf_set_core_clk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_perf.c__dpu_core_perf_set_core_clk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dss_clk* }
%struct.dss_clk = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_kms*, i64)* @_dpu_core_perf_set_core_clk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_core_perf_set_core_clk_rate(%struct.dpu_kms* %0, i64 %1) #0 {
  %3 = alloca %struct.dpu_kms*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dss_clk*, align 8
  store %struct.dpu_kms* %0, %struct.dpu_kms** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %7 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.dss_clk*, %struct.dss_clk** %8, align 8
  store %struct.dss_clk* %9, %struct.dss_clk** %5, align 8
  %10 = load %struct.dss_clk*, %struct.dss_clk** %5, align 8
  %11 = getelementptr inbounds %struct.dss_clk, %struct.dss_clk* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.dss_clk*, %struct.dss_clk** %5, align 8
  %17 = getelementptr inbounds %struct.dss_clk, %struct.dss_clk* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.dss_clk*, %struct.dss_clk** %5, align 8
  %22 = getelementptr inbounds %struct.dss_clk, %struct.dss_clk* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %20, %14, %2
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.dss_clk*, %struct.dss_clk** %5, align 8
  %27 = getelementptr inbounds %struct.dss_clk, %struct.dss_clk* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.dss_clk*, %struct.dss_clk** %5, align 8
  %29 = call i32 @msm_dss_clk_set_rate(%struct.dss_clk* %28, i32 1)
  ret i32 %29
}

declare dso_local i32 @msm_dss_clk_set_rate(%struct.dss_clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
