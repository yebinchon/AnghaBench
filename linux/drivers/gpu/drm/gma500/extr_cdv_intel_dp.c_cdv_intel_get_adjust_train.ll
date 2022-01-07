; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_get_adjust_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_get_adjust_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_encoder = type { %struct.cdv_intel_dp* }
%struct.cdv_intel_dp = type { i32, i64*, i32 }

@CDV_DP_VOLTAGE_MAX = common dso_local global i64 0, align 8
@DP_TRAIN_MAX_SWING_REACHED = common dso_local global i64 0, align 8
@DP_TRAIN_PRE_EMPHASIS_MASK = common dso_local global i64 0, align 8
@DP_TRAIN_MAX_PRE_EMPHASIS_REACHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gma_encoder*)* @cdv_intel_get_adjust_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_intel_get_adjust_train(%struct.gma_encoder* %0) #0 {
  %2 = alloca %struct.gma_encoder*, align 8
  %3 = alloca %struct.cdv_intel_dp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.gma_encoder* %0, %struct.gma_encoder** %2, align 8
  %9 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %10 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %9, i32 0, i32 0
  %11 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  store %struct.cdv_intel_dp* %11, %struct.cdv_intel_dp** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %41, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %3, align 8
  %15 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %3, align 8
  %20 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @cdv_intel_get_adjust_request_voltage(i32 %21, i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %3, align 8
  %25 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @cdv_intel_get_adjust_request_pre_emphasis(i32 %26, i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %32, %18
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %38, %34
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %12

44:                                               ; preds = %12
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @CDV_DP_VOLTAGE_MAX, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i64, i64* @CDV_DP_VOLTAGE_MAX, align 8
  %50 = load i64, i64* @DP_TRAIN_MAX_SWING_REACHED, align 8
  %51 = or i64 %49, %50
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @DP_TRAIN_PRE_EMPHASIS_MASK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* @DP_TRAIN_MAX_PRE_EMPHASIS_REACHED, align 8
  %58 = load i64, i64* %5, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %56, %52
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %74, %60
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = or i64 %65, %66
  %68 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %3, align 8
  %69 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  store i64 %67, i64* %73, align 8
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %61

77:                                               ; preds = %61
  ret void
}

declare dso_local i64 @cdv_intel_get_adjust_request_voltage(i32, i32) #1

declare dso_local i64 @cdv_intel_get_adjust_request_pre_emphasis(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
