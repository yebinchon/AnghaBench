; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.radeon_crtc = type { i64, %struct.drm_display_mode, i32, i32 }
%struct.radeon_encoder = type { i32 }

@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atombios_crtc_mode_set(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2, i32 %3, i32 %4, %struct.drm_framebuffer* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_framebuffer*, align 8
  %14 = alloca %struct.radeon_crtc*, align 8
  %15 = alloca %struct.drm_device*, align 8
  %16 = alloca %struct.radeon_device*, align 8
  %17 = alloca %struct.radeon_encoder*, align 8
  %18 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %8, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %9, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.drm_framebuffer* %5, %struct.drm_framebuffer** %13, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %20 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %19)
  store %struct.radeon_crtc* %20, %struct.radeon_crtc** %14, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %15, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.radeon_device*, %struct.radeon_device** %25, align 8
  store %struct.radeon_device* %26, %struct.radeon_device** %16, align 8
  %27 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %28 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.radeon_encoder* @to_radeon_encoder(i32 %29)
  store %struct.radeon_encoder* %30, %struct.radeon_encoder** %17, align 8
  store i32 0, i32* %18, align 4
  %31 = load %struct.radeon_encoder*, %struct.radeon_encoder** %17, align 8
  %32 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %35 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %6
  store i32 1, i32* %18, align 4
  br label %40

40:                                               ; preds = %39, %6
  %41 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %42 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %110

48:                                               ; preds = %40
  %49 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %51 = call i32 @atombios_crtc_set_pll(%struct.drm_crtc* %49, %struct.drm_display_mode* %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  %53 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %58 = call i32 @atombios_set_crtc_dtd_timing(%struct.drm_crtc* %56, %struct.drm_display_mode* %57)
  br label %91

59:                                               ; preds = %48
  %60 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  %61 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load i32, i32* %18, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %69 = call i32 @atombios_crtc_set_timing(%struct.drm_crtc* %67, %struct.drm_display_mode* %68)
  br label %74

70:                                               ; preds = %63
  %71 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %73 = call i32 @atombios_set_crtc_dtd_timing(%struct.drm_crtc* %71, %struct.drm_display_mode* %72)
  br label %74

74:                                               ; preds = %70, %66
  br label %90

75:                                               ; preds = %59
  %76 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %78 = call i32 @atombios_crtc_set_timing(%struct.drm_crtc* %76, %struct.drm_display_mode* %77)
  %79 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %80 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %86 = call i32 @atombios_set_crtc_dtd_timing(%struct.drm_crtc* %84, %struct.drm_display_mode* %85)
  br label %87

87:                                               ; preds = %83, %75
  %88 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %89 = call i32 @radeon_legacy_atom_fixup(%struct.drm_crtc* %88)
  br label %90

90:                                               ; preds = %87, %74
  br label %91

91:                                               ; preds = %90, %55
  %92 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %96 = call i32 @atombios_crtc_set_base(%struct.drm_crtc* %92, i32 %93, i32 %94, %struct.drm_framebuffer* %95)
  %97 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %99 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %100 = call i32 @atombios_overscan_setup(%struct.drm_crtc* %97, %struct.drm_display_mode* %98, %struct.drm_display_mode* %99)
  %101 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %102 = call i32 @atombios_scaler_setup(%struct.drm_crtc* %101)
  %103 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %104 = call i32 @radeon_cursor_reset(%struct.drm_crtc* %103)
  %105 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %106 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %105, i32 0, i32 1
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %108 = bitcast %struct.drm_display_mode* %106 to i8*
  %109 = bitcast %struct.drm_display_mode* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 4 %109, i64 4, i1 false)
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %91, %45
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(i32) #1

declare dso_local i32 @atombios_crtc_set_pll(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @atombios_set_crtc_dtd_timing(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @atombios_crtc_set_timing(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i32 @radeon_legacy_atom_fixup(%struct.drm_crtc*) #1

declare dso_local i32 @atombios_crtc_set_base(%struct.drm_crtc*, i32, i32, %struct.drm_framebuffer*) #1

declare dso_local i32 @atombios_overscan_setup(%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @atombios_scaler_setup(%struct.drm_crtc*) #1

declare dso_local i32 @radeon_cursor_reset(%struct.drm_crtc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
