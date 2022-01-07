; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_allowed_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_allowed_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_feature }
%struct.smu_feature = type { i32, i32, i32 }

@SMU_FEATURE_MAX = common dso_local global i32 0, align 4
@SMU_MSG_SetAllowedFeaturesMaskHigh = common dso_local global i32 0, align 4
@SMU_MSG_SetAllowedFeaturesMaskLow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_set_allowed_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_set_allowed_mask(%struct.smu_context* %0) #0 {
  %2 = alloca %struct.smu_context*, align 8
  %3 = alloca %struct.smu_feature*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  store %struct.smu_context* %0, %struct.smu_context** %2, align 8
  %6 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %7 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %6, i32 0, i32 0
  store %struct.smu_feature* %7, %struct.smu_feature** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.smu_feature*, %struct.smu_feature** %3, align 8
  %9 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.smu_feature*, %struct.smu_feature** %3, align 8
  %12 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SMU_FEATURE_MAX, align 4
  %15 = call i64 @bitmap_empty(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.smu_feature*, %struct.smu_feature** %3, align 8
  %19 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 64
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %1
  br label %48

23:                                               ; preds = %17
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %25 = bitcast i32* %24 to i64*
  %26 = load %struct.smu_feature*, %struct.smu_feature** %3, align 8
  %27 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bitmap_copy(i64* %25, i32 %28, i32 64)
  %30 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %31 = load i32, i32* @SMU_MSG_SetAllowedFeaturesMaskHigh, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %30, i32 %31, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %48

38:                                               ; preds = %23
  %39 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %40 = load i32, i32* @SMU_MSG_SetAllowedFeaturesMaskLow, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %39, i32 %40, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %48

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %46, %37, %22
  %49 = load %struct.smu_feature*, %struct.smu_feature** %3, align 8
  %50 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @bitmap_empty(i32, i32) #1

declare dso_local i32 @bitmap_copy(i64*, i32, i32) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
