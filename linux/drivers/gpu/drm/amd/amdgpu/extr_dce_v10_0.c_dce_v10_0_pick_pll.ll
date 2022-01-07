; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_pick_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_pick_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.amdgpu_crtc = type { i32 }

@ATOM_PPLL_INVALID = common dso_local global i32 0, align 4
@ATOM_PPLL2 = common dso_local global i32 0, align 4
@ATOM_PPLL1 = common dso_local global i32 0, align 4
@ATOM_PPLL0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unable to allocate a PPLL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*)* @dce_v10_0_pick_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v10_0_pick_pll(%struct.drm_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.amdgpu_crtc*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %9)
  store %struct.amdgpu_crtc* %10, %struct.amdgpu_crtc** %4, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %6, align 8
  %17 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(i32 %19)
  %21 = call i64 @ENCODER_MODE_IS_DP(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %30, i32* %2, align 4
  br label %79

31:                                               ; preds = %23
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %33 = call i32 @amdgpu_pll_get_shared_dp_ppll(%struct.drm_crtc* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %2, align 4
  br label %79

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  br label %50

41:                                               ; preds = %1
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %43 = call i32 @amdgpu_pll_get_shared_nondp_ppll(%struct.drm_crtc* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  br label %79

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %40
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %52 = call i32 @amdgpu_pll_get_use_mask(%struct.drm_crtc* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @ATOM_PPLL2, align 4
  %55 = shl i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @ATOM_PPLL2, align 4
  store i32 %59, i32* %2, align 4
  br label %79

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @ATOM_PPLL1, align 4
  %63 = shl i32 1, %62
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @ATOM_PPLL1, align 4
  store i32 %67, i32* %2, align 4
  br label %79

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @ATOM_PPLL0, align 4
  %71 = shl i32 1, %70
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @ATOM_PPLL0, align 4
  store i32 %75, i32* %2, align 4
  br label %79

76:                                               ; preds = %68
  %77 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %74, %66, %58, %47, %37, %29
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @ENCODER_MODE_IS_DP(i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_get_encoder_mode(i32) #1

declare dso_local i32 @amdgpu_pll_get_shared_dp_ppll(%struct.drm_crtc*) #1

declare dso_local i32 @amdgpu_pll_get_shared_nondp_ppll(%struct.drm_crtc*) #1

declare dso_local i32 @amdgpu_pll_get_use_mask(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
