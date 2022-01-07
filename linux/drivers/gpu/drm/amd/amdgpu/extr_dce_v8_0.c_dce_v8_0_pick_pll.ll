; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_pick_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_pick_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.amdgpu_crtc = type { i32 }

@ATOM_PPLL_INVALID = common dso_local global i32 0, align 4
@CHIP_KABINI = common dso_local global i64 0, align 8
@CHIP_MULLINS = common dso_local global i64 0, align 8
@ATOM_PPLL2 = common dso_local global i32 0, align 4
@ATOM_PPLL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unable to allocate a PPLL\0A\00", align 1
@ATOM_PPLL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*)* @dce_v8_0_pick_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v8_0_pick_pll(%struct.drm_crtc* %0) #0 {
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
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %30, i32* %2, align 4
  br label %112

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
  br label %112

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
  br label %112

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %40
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CHIP_KABINI, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CHIP_MULLINS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %56, %50
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %64 = call i32 @amdgpu_pll_get_use_mask(%struct.drm_crtc* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @ATOM_PPLL2, align 4
  %67 = shl i32 1, %66
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @ATOM_PPLL2, align 4
  store i32 %71, i32* %2, align 4
  br label %112

72:                                               ; preds = %62
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @ATOM_PPLL1, align 4
  %75 = shl i32 1, %74
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @ATOM_PPLL1, align 4
  store i32 %79, i32* %2, align 4
  br label %112

80:                                               ; preds = %72
  %81 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %82, i32* %2, align 4
  br label %112

83:                                               ; preds = %56
  %84 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %85 = call i32 @amdgpu_pll_get_use_mask(%struct.drm_crtc* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @ATOM_PPLL2, align 4
  %88 = shl i32 1, %87
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %83
  %92 = load i32, i32* @ATOM_PPLL2, align 4
  store i32 %92, i32* %2, align 4
  br label %112

93:                                               ; preds = %83
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @ATOM_PPLL1, align 4
  %96 = shl i32 1, %95
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* @ATOM_PPLL1, align 4
  store i32 %100, i32* %2, align 4
  br label %112

101:                                              ; preds = %93
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @ATOM_PPLL0, align 4
  %104 = shl i32 1, %103
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @ATOM_PPLL0, align 4
  store i32 %108, i32* %2, align 4
  br label %112

109:                                              ; preds = %101
  %110 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %109, %107, %99, %91, %80, %78, %70, %47, %37, %29
  %113 = load i32, i32* %2, align 4
  ret i32 %113
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
