; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_crtc_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_crtc_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.amdgpu_crtc = type { %struct.drm_display_mode, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*, i32, i32, %struct.drm_framebuffer*)* @dce_v10_0_crtc_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v10_0_crtc_mode_set(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2, i32 %3, i32 %4, %struct.drm_framebuffer* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_framebuffer*, align 8
  %14 = alloca %struct.amdgpu_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %8, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %9, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.drm_framebuffer* %5, %struct.drm_framebuffer** %13, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %16 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %15)
  store %struct.amdgpu_crtc* %16, %struct.amdgpu_crtc** %14, align 8
  %17 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %14, align 8
  %18 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %49

24:                                               ; preds = %6
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %27 = call i32 @amdgpu_atombios_crtc_set_pll(%struct.drm_crtc* %25, %struct.drm_display_mode* %26)
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %30 = call i32 @amdgpu_atombios_crtc_set_dtd_timing(%struct.drm_crtc* %28, %struct.drm_display_mode* %29)
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %32 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @dce_v10_0_crtc_do_set_base(%struct.drm_crtc* %31, %struct.drm_framebuffer* %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %39 = call i32 @amdgpu_atombios_crtc_overscan_setup(%struct.drm_crtc* %36, %struct.drm_display_mode* %37, %struct.drm_display_mode* %38)
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %41 = call i32 @amdgpu_atombios_crtc_scaler_setup(%struct.drm_crtc* %40)
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %43 = call i32 @dce_v10_0_cursor_reset(%struct.drm_crtc* %42)
  %44 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %14, align 8
  %45 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %44, i32 0, i32 0
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %47 = bitcast %struct.drm_display_mode* %45 to i8*
  %48 = bitcast %struct.drm_display_mode* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %24, %21
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @amdgpu_atombios_crtc_set_pll(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i32 @amdgpu_atombios_crtc_set_dtd_timing(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i32 @dce_v10_0_crtc_do_set_base(%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_atombios_crtc_overscan_setup(%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @amdgpu_atombios_crtc_scaler_setup(%struct.drm_crtc*) #1

declare dso_local i32 @dce_v10_0_cursor_reset(%struct.drm_crtc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
