; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_baco_is_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_baco_is_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_baco_context, %struct.amdgpu_device* }
%struct.smu_baco_context = type { i32, i32 }
%struct.amdgpu_device = type { i32 }

@SMU_FEATURE_BACO_BIT = common dso_local global i32 0, align 4
@NBIO = common dso_local global i32 0, align 4
@mmRCC_BIF_STRAP0 = common dso_local global i32 0, align 4
@RCC_BIF_STRAP0__STRAP_PX_CAPABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_baco_is_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_baco_is_support(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.smu_baco_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %8 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %9 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %8, i32 0, i32 1
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %4, align 8
  %11 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %12 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %11, i32 0, i32 0
  store %struct.smu_baco_context* %12, %struct.smu_baco_context** %5, align 8
  %13 = load %struct.smu_baco_context*, %struct.smu_baco_context** %5, align 8
  %14 = getelementptr inbounds %struct.smu_baco_context, %struct.smu_baco_context* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.smu_baco_context*, %struct.smu_baco_context** %5, align 8
  %17 = getelementptr inbounds %struct.smu_baco_context, %struct.smu_baco_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.smu_baco_context*, %struct.smu_baco_context** %5, align 8
  %20 = getelementptr inbounds %struct.smu_baco_context, %struct.smu_baco_context* %19, i32 0, i32 1
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

25:                                               ; preds = %1
  %26 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %27 = load i32, i32* @SMU_FEATURE_BACO_BIT, align 4
  %28 = call i32 @smu_feature_is_enabled(%struct.smu_context* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %41

31:                                               ; preds = %25
  %32 = load i32, i32* @NBIO, align 4
  %33 = load i32, i32* @mmRCC_BIF_STRAP0, align 4
  %34 = call i32 @RREG32_SOC15(i32 %32, i32 0, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @RCC_BIF_STRAP0__STRAP_PX_CAPABLE_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %41

40:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %39, %30, %24
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @smu_feature_is_enabled(%struct.smu_context*, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
