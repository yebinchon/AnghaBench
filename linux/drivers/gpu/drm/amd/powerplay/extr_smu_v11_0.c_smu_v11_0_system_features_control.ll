; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_system_features_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_system_features_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i64, %struct.smu_feature }
%struct.smu_feature = type { i32, i32, i32 }

@SMU_MSG_EnableAllSmuFeatures = common dso_local global i32 0, align 4
@SMU_MSG_DisableAllSmuFeatures = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32)* @smu_v11_0_system_features_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_system_features_control(%struct.smu_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_feature*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %10 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %9, i32 0, i32 1
  store %struct.smu_feature* %10, %struct.smu_feature** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %12 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @SMU_MSG_EnableAllSmuFeatures, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @SMU_MSG_DisableAllSmuFeatures, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call i32 @smu_send_smc_msg(%struct.smu_context* %16, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %57

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %34 = call i32 @smu_feature_get_enabled_mask(%struct.smu_context* %32, i32* %33, i32 2)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %57

39:                                               ; preds = %31
  %40 = load %struct.smu_feature*, %struct.smu_feature** %6, align 8
  %41 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = bitcast [2 x i32]* %7 to i64*
  %44 = load %struct.smu_feature*, %struct.smu_feature** %6, align 8
  %45 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bitmap_copy(i32 %42, i64* %43, i32 %46)
  %48 = load %struct.smu_feature*, %struct.smu_feature** %6, align 8
  %49 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = bitcast [2 x i32]* %7 to i64*
  %52 = load %struct.smu_feature*, %struct.smu_feature** %6, align 8
  %53 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bitmap_copy(i32 %50, i64* %51, i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %39, %37, %28
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @smu_send_smc_msg(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_feature_get_enabled_mask(%struct.smu_context*, i32*, i32) #1

declare dso_local i32 @bitmap_copy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
