; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_common_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_common_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, i32, %struct.smu_power_context }
%struct.smu_power_context = type { %struct.smu_power_gate }
%struct.smu_power_gate = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMU_FEATURE_DPM_UVD_BIT = common dso_local global i32 0, align 4
@SMU_FEATURE_DPM_VCE_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_common_read_sensor(%struct.smu_context* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.smu_power_context*, align 8
  %11 = alloca %struct.smu_power_gate*, align 8
  %12 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %14 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %13, i32 0, i32 2
  store %struct.smu_power_context* %14, %struct.smu_power_context** %10, align 8
  %15 = load %struct.smu_power_context*, %struct.smu_power_context** %10, align 8
  %16 = getelementptr inbounds %struct.smu_power_context, %struct.smu_power_context* %15, i32 0, i32 0
  store %struct.smu_power_gate* %16, %struct.smu_power_gate** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %87

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %77 [
    i32 131, label %27
    i32 132, label %34
    i32 133, label %41
    i32 130, label %47
    i32 129, label %57
    i32 128, label %67
  ]

27:                                               ; preds = %25
  %28 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %29 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 4, i32* %33, align 4
  br label %80

34:                                               ; preds = %25
  %35 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %36 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %9, align 8
  store i32 4, i32* %40, align 4
  br label %80

41:                                               ; preds = %25
  %42 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = call i32 @smu_feature_get_enabled_mask(%struct.smu_context* %42, i32* %44, i32 2)
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 8, i32* %46, align 4
  br label %80

47:                                               ; preds = %25
  %48 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %49 = load i32, i32* @SMU_FEATURE_DPM_UVD_BIT, align 4
  %50 = call i32 @smu_feature_is_enabled(%struct.smu_context* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = load i8*, i8** %8, align 8
  %55 = bitcast i8* %54 to i32*
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 4, i32* %56, align 4
  br label %80

57:                                               ; preds = %25
  %58 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %59 = load i32, i32* @SMU_FEATURE_DPM_VCE_BIT, align 4
  %60 = call i32 @smu_feature_is_enabled(%struct.smu_context* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  %64 = load i8*, i8** %8, align 8
  %65 = bitcast i8* %64 to i32*
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %9, align 8
  store i32 4, i32* %66, align 4
  br label %80

67:                                               ; preds = %25
  %68 = load %struct.smu_power_gate*, %struct.smu_power_gate** %11, align 8
  %69 = getelementptr inbounds %struct.smu_power_gate, %struct.smu_power_gate* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 0, i32 1
  %74 = load i8*, i8** %8, align 8
  %75 = bitcast i8* %74 to i32*
  store i32 %73, i32* %75, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 4, i32* %76, align 4
  br label %80

77:                                               ; preds = %25
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %77, %67, %57, %47, %41, %34, %27
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32*, i32** %9, align 8
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %22
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @smu_feature_get_enabled_mask(%struct.smu_context*, i32*, i32) #1

declare dso_local i32 @smu_feature_is_enabled(%struct.smu_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
