; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_get_clockgating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_get_clockgating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@ixCURRENT_PG_STATUS_APU = common dso_local global i32 0, align 4
@ixCURRENT_PG_STATUS = common dso_local global i32 0, align 4
@CURRENT_PG_STATUS__VCE_PG_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Cannot get clockgating state when VCE is powergated.\0A\00", align 1
@GRBM_GFX_INDEX = common dso_local global i32 0, align 4
@VCE_INSTANCE = common dso_local global i32 0, align 4
@mmVCE_CLOCK_GATING_A = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_VCE_MGCG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @vce_v3_0_get_clockgating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vce_v3_0_get_clockgating_state(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %5, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AMD_IS_APU, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ixCURRENT_PG_STATUS_APU, align 4
  %21 = call i32 @RREG32_SMC(i32 %20)
  store i32 %21, i32* %6, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ixCURRENT_PG_STATUS, align 4
  %24 = call i32 @RREG32_SMC(i32 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @CURRENT_PG_STATUS__VCE_PG_STATUS_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @DRM_INFO(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %47

32:                                               ; preds = %25
  %33 = load i32, i32* @GRBM_GFX_INDEX, align 4
  %34 = load i32, i32* @VCE_INSTANCE, align 4
  %35 = call i32 @WREG32_FIELD(i32 %33, i32 %34, i32 0)
  %36 = load i32, i32* @mmVCE_CLOCK_GATING_A, align 4
  %37 = call i32 @RREG32(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 64
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load i32, i32* @AMD_CG_SUPPORT_VCE_MGCG, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %32
  br label %47

47:                                               ; preds = %46, %30
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @WREG32_FIELD(i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
