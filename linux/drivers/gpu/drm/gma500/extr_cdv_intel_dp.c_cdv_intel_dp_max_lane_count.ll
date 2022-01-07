; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_max_lane_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_max_lane_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_encoder = type { %struct.cdv_intel_dp* }
%struct.cdv_intel_dp = type { i32* }

@DP_DPCD_REV = common dso_local global i64 0, align 8
@DP_MAX_LANE_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gma_encoder*)* @cdv_intel_dp_max_lane_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_dp_max_lane_count(%struct.gma_encoder* %0) #0 {
  %2 = alloca %struct.gma_encoder*, align 8
  %3 = alloca %struct.cdv_intel_dp*, align 8
  %4 = alloca i32, align 4
  store %struct.gma_encoder* %0, %struct.gma_encoder** %2, align 8
  %5 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %6 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %5, i32 0, i32 0
  %7 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %6, align 8
  store %struct.cdv_intel_dp* %7, %struct.cdv_intel_dp** %3, align 8
  store i32 4, i32* %4, align 4
  %8 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %3, align 8
  %9 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @DP_DPCD_REV, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 17
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %3, align 8
  %17 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @DP_MAX_LANE_COUNT, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 31
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %25 [
    i32 1, label %24
    i32 2, label %24
    i32 4, label %24
  ]

24:                                               ; preds = %15, %15, %15
  br label %26

25:                                               ; preds = %15
  store i32 4, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %24
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
