; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_enable_all_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_enable_all_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ras = type { i32 }
%struct.ras_common_if = type { i32, i32, i32, i32 }

@AMDGPU_RAS_BLOCK_COUNT = common dso_local global i32 0, align 4
@AMDGPU_RAS_ERROR__NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @amdgpu_ras_enable_all_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ras_enable_all_features(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_ras*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ras_common_if, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %10)
  store %struct.amdgpu_ras* %11, %struct.amdgpu_ras** %5, align 8
  %12 = load i32, i32* @AMDGPU_RAS_BLOCK_COUNT, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @AMDGPU_RAS_ERROR__NONE, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %45, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ras_common_if, %struct.ras_common_if* %9, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.ras_common_if, %struct.ras_common_if* %9, i32 0, i32 1
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ras_common_if, %struct.ras_common_if* %9, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.ras_common_if, %struct.ras_common_if* %9, i32 0, i32 3
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.ras_common_if, %struct.ras_common_if* %9, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ras_block_str(i32 %27)
  %29 = call i32 @strcpy(i32 %26, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %18
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = call i64 @__amdgpu_ras_feature_enable(%struct.amdgpu_device* %33, %struct.ras_common_if* %9, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %48

37:                                               ; preds = %32
  br label %44

38:                                               ; preds = %18
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %40 = call i64 @amdgpu_ras_feature_enable(%struct.amdgpu_device* %39, %struct.ras_common_if* %9, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %48

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %14

48:                                               ; preds = %42, %36, %14
  %49 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %5, align 8
  %50 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  ret i32 %51
}

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @ras_block_str(i32) #1

declare dso_local i64 @__amdgpu_ras_feature_enable(%struct.amdgpu_device*, %struct.ras_common_if*, i32) #1

declare dso_local i64 @amdgpu_ras_feature_enable(%struct.amdgpu_device*, %struct.ras_common_if*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
