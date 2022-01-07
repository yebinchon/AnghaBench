; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_set_clockgating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_set_clockgating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AMD_CG_STATE_GATE = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_VCE_MGCG = common dso_local global i32 0, align 4
@mmGRBM_GFX_INDEX = common dso_local global i32 0, align 4
@mmVCE_CLOCK_GATING_A = common dso_local global i32 0, align 4
@mmVCE_UENC_CLOCK_GATING = common dso_local global i32 0, align 4
@mmGRBM_GFX_INDEX_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @vce_v3_0_set_clockgating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v3_0_set_clockgating_state(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  store i32 %16, i32* %7, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AMD_CG_SUPPORT_VCE_MGCG, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

24:                                               ; preds = %2
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %71, %24
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %74

31:                                               ; preds = %28
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %71

41:                                               ; preds = %31
  %42 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @GET_VCE_INSTANCE(i32 %43)
  %45 = call i32 @WREG32(i32 %42, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @mmVCE_CLOCK_GATING_A, align 4
  %50 = call i32 @RREG32(i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, -4096
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, 64
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @mmVCE_CLOCK_GATING_A, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @WREG32(i32 %55, i32 %56)
  %58 = load i32, i32* @mmVCE_UENC_CLOCK_GATING, align 4
  %59 = call i32 @RREG32(i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, -4096
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, 64
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @mmVCE_UENC_CLOCK_GATING, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @WREG32(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %48, %41
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @vce_v3_0_set_vce_sw_clock_gating(%struct.amdgpu_device* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %40
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %28

74:                                               ; preds = %28
  %75 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %76 = load i32, i32* @mmGRBM_GFX_INDEX_DEFAULT, align 4
  %77 = call i32 @WREG32(i32 %75, i32 %76)
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %74, %23
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @GET_VCE_INSTANCE(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @vce_v3_0_set_vce_sw_clock_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
