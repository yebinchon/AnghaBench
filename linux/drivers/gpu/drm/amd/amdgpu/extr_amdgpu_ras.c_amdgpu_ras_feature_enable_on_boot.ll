; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_feature_enable_on_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_feature_enable_on_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.ras_common_if = type { i32 }
%struct.amdgpu_ras = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_RAS_FLAG_INIT_BY_VBIOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"RAS INFO: %s setup object\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ras_feature_enable_on_boot(%struct.amdgpu_device* %0, %struct.ras_common_if* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.ras_common_if*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_ras*, align 8
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.ras_common_if* %1, %struct.ras_common_if** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %11 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %10)
  store %struct.amdgpu_ras* %11, %struct.amdgpu_ras** %8, align 8
  %12 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %8, align 8
  %13 = icmp ne %struct.amdgpu_ras* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %69

17:                                               ; preds = %3
  %18 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %8, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AMDGPU_RAS_FLAG_INIT_BY_VBIOS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %29 = load %struct.ras_common_if*, %struct.ras_common_if** %6, align 8
  %30 = call i32 @amdgpu_ras_feature_enable(%struct.amdgpu_device* %28, %struct.ras_common_if* %29, i32 1)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %37 = load %struct.ras_common_if*, %struct.ras_common_if** %6, align 8
  %38 = call i32 @__amdgpu_ras_feature_enable(%struct.amdgpu_device* %36, %struct.ras_common_if* %37, i32 1)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.ras_common_if*, %struct.ras_common_if** %6, align 8
  %43 = getelementptr inbounds %struct.ras_common_if, %struct.ras_common_if* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ras_block_str(i32 %44)
  %46 = call i32 @DRM_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %35
  br label %48

48:                                               ; preds = %47, %27
  br label %61

49:                                               ; preds = %24
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %51 = load %struct.ras_common_if*, %struct.ras_common_if** %6, align 8
  %52 = call i32 @__amdgpu_ras_feature_enable(%struct.amdgpu_device* %50, %struct.ras_common_if* %51, i32 1)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %69

57:                                               ; preds = %49
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %59 = load %struct.ras_common_if*, %struct.ras_common_if** %6, align 8
  %60 = call i32 @amdgpu_ras_feature_enable(%struct.amdgpu_device* %58, %struct.ras_common_if* %59, i32 0)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %48
  br label %67

62:                                               ; preds = %17
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %64 = load %struct.ras_common_if*, %struct.ras_common_if** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @amdgpu_ras_feature_enable(%struct.amdgpu_device* %63, %struct.ras_common_if* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %62, %61
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %55, %14
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ras_feature_enable(%struct.amdgpu_device*, %struct.ras_common_if*, i32) #1

declare dso_local i32 @__amdgpu_ras_feature_enable(%struct.amdgpu_device*, %struct.ras_common_if*, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @ras_block_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
