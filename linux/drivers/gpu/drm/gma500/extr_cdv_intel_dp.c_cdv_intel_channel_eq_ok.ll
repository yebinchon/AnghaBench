; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_channel_eq_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_channel_eq_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_encoder = type { %struct.cdv_intel_dp* }
%struct.cdv_intel_dp = type { i32, i32 }

@DP_LANE_ALIGN_STATUS_UPDATED = common dso_local global i32 0, align 4
@DP_INTERLANE_ALIGN_DONE = common dso_local global i32 0, align 4
@CHANNEL_EQ_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gma_encoder*)* @cdv_intel_channel_eq_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_channel_eq_ok(%struct.gma_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gma_encoder*, align 8
  %4 = alloca %struct.cdv_intel_dp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gma_encoder* %0, %struct.gma_encoder** %3, align 8
  %8 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %8, i32 0, i32 0
  %10 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %9, align 8
  store %struct.cdv_intel_dp* %10, %struct.cdv_intel_dp** %4, align 8
  %11 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %12 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DP_LANE_ALIGN_STATUS_UPDATED, align 4
  %15 = call i32 @cdv_intel_dp_link_status(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DP_INTERLANE_ALIGN_DONE, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

21:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %25 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %30 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @cdv_intel_get_lane_status(i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @CHANNEL_EQ_BITS, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @CHANNEL_EQ_BITS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %45

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %22

44:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %39, %20
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @cdv_intel_dp_link_status(i32, i32) #1

declare dso_local i32 @cdv_intel_get_lane_status(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
