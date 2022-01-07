; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_downstream_hpd_needs_d0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_downstream_hpd_needs_d0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32*, i32* }

@DP_DPCD_REV = common dso_local global i64 0, align 8
@DP_DOWNSTREAMPORT_PRESENT = common dso_local global i64 0, align 8
@DP_DWN_STRM_PORT_PRESENT = common dso_local global i32 0, align 4
@DP_DS_PORT_HPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @downstream_hpd_needs_d0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @downstream_hpd_needs_d0(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %3 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %4 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @DP_DPCD_REV, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 17
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %12 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @DP_DOWNSTREAMPORT_PRESENT, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DP_DWN_STRM_PORT_PRESENT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %10
  %21 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %22 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DP_DS_PORT_HPD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %20, %10, %1
  %30 = phi i1 [ false, %10 ], [ false, %1 ], [ %28, %20 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
