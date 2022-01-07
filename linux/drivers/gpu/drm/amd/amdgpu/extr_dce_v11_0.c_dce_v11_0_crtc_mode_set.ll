; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_crtc_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_crtc_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i64 }
%struct.drm_display_mode = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.amdgpu_crtc = type { %struct.drm_display_mode, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_encoder = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CHIP_POLARIS10 = common dso_local global i64 0, align 8
@CHIP_POLARIS11 = common dso_local global i64 0, align 8
@CHIP_POLARIS12 = common dso_local global i64 0, align 8
@CHIP_VEGAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*, i32, i32, %struct.drm_framebuffer*)* @dce_v11_0_crtc_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v11_0_crtc_mode_set(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2, i32 %3, i32 %4, %struct.drm_framebuffer* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_framebuffer*, align 8
  %14 = alloca %struct.amdgpu_crtc*, align 8
  %15 = alloca %struct.drm_device*, align 8
  %16 = alloca %struct.amdgpu_device*, align 8
  %17 = alloca %struct.amdgpu_encoder*, align 8
  %18 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %8, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %9, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.drm_framebuffer* %5, %struct.drm_framebuffer** %13, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %20 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %19)
  store %struct.amdgpu_crtc* %20, %struct.amdgpu_crtc** %14, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %15, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %25, align 8
  store %struct.amdgpu_device* %26, %struct.amdgpu_device** %16, align 8
  %27 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %14, align 8
  %28 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %116

34:                                               ; preds = %6
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CHIP_POLARIS10, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %58, label %40

40:                                               ; preds = %34
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CHIP_POLARIS11, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %40
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CHIP_POLARIS12, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CHIP_VEGAM, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %90

58:                                               ; preds = %52, %46, %40, %34
  %59 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %14, align 8
  %60 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(i32 %61)
  store %struct.amdgpu_encoder* %62, %struct.amdgpu_encoder** %17, align 8
  %63 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %14, align 8
  %64 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(i32 %65)
  store i32 %66, i32* %18, align 4
  %67 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %68 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %14, align 8
  %69 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %14, align 8
  %72 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %17, align 8
  %76 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %14, align 8
  %82 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %14, align 8
  %85 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %14, align 8
  %88 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %87, i32 0, i32 1
  %89 = call i32 @amdgpu_atombios_crtc_program_pll(%struct.drm_crtc* %67, i32 %70, i32 %73, i32 %74, i32 %77, i32 %80, i32 0, i32 0, i32 0, i32 0, i32 %83, i32 %86, i32* %88)
  br label %94

90:                                               ; preds = %52
  %91 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %93 = call i32 @amdgpu_atombios_crtc_set_pll(%struct.drm_crtc* %91, %struct.drm_display_mode* %92)
  br label %94

94:                                               ; preds = %90, %58
  %95 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %96 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %97 = call i32 @amdgpu_atombios_crtc_set_dtd_timing(%struct.drm_crtc* %95, %struct.drm_display_mode* %96)
  %98 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %99 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @dce_v11_0_crtc_do_set_base(%struct.drm_crtc* %98, %struct.drm_framebuffer* %99, i32 %100, i32 %101, i32 0)
  %103 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %104 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %105 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %106 = call i32 @amdgpu_atombios_crtc_overscan_setup(%struct.drm_crtc* %103, %struct.drm_display_mode* %104, %struct.drm_display_mode* %105)
  %107 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %108 = call i32 @amdgpu_atombios_crtc_scaler_setup(%struct.drm_crtc* %107)
  %109 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %110 = call i32 @dce_v11_0_cursor_reset(%struct.drm_crtc* %109)
  %111 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %14, align 8
  %112 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %111, i32 0, i32 0
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %114 = bitcast %struct.drm_display_mode* %112 to i8*
  %115 = bitcast %struct.drm_display_mode* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 4, i1 false)
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %94, %31
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_get_encoder_mode(i32) #1

declare dso_local i32 @amdgpu_atombios_crtc_program_pll(%struct.drm_crtc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @amdgpu_atombios_crtc_set_pll(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i32 @amdgpu_atombios_crtc_set_dtd_timing(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i32 @dce_v11_0_crtc_do_set_base(%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_atombios_crtc_overscan_setup(%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @amdgpu_atombios_crtc_scaler_setup(%struct.drm_crtc*) #1

declare dso_local i32 @dce_v11_0_cursor_reset(%struct.drm_crtc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
