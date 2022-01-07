; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_6__, i64, %struct.smu_context }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.amdgpu_device*)* }
%struct.smu_context = type { i32 }

@SMU_FEATURE_BACO_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"set BACO feature enabled failed, return %d\0A\00", align 1
@WATERMARKS_LOADED = common dso_local global i32 0, align 4
@CHIP_NAVI10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @smu_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_suspend(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.smu_context*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %5, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 3
  store %struct.smu_context* %11, %struct.smu_context** %6, align 8
  %12 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %13 = load i32, i32* @SMU_FEATURE_BACO_BIT, align 4
  %14 = call i32 @smu_feature_is_enabled(%struct.smu_context* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %16 = call i32 @smu_system_features_control(%struct.smu_context* %15, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %72

21:                                               ; preds = %1
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %31 = load i32, i32* @SMU_FEATURE_BACO_BIT, align 4
  %32 = call i32 @smu_feature_set_enabled(%struct.smu_context* %30, i32 %31, i32 1)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %72

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %26, %21
  %41 = load i32, i32* @WATERMARKS_LOADED, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %44 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CHIP_NAVI10, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %40
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %58, align 8
  %60 = icmp ne i32 (%struct.amdgpu_device*)* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %52
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %67, align 8
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %70 = call i32 %68(%struct.amdgpu_device* %69)
  br label %71

71:                                               ; preds = %61, %52, %40
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %35, %19
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @smu_feature_is_enabled(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_system_features_control(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_feature_set_enabled(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
