; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_encoder_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_encoder_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.amdgpu_encoder = type { i32 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_HDMI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @dce_v11_0_encoder_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v11_0_encoder_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.amdgpu_encoder*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %9 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %8)
  store %struct.amdgpu_encoder* %9, %struct.amdgpu_encoder** %7, align 8
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %11 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %14 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %16 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %17 = call i32 @amdgpu_atombios_encoder_dpms(%struct.drm_encoder* %15, i32 %16)
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %22 = call i32 @dce_v11_0_set_interleave(i32 %20, %struct.drm_display_mode* %21)
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %24 = call i64 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %23)
  %25 = load i64, i64* @ATOM_ENCODER_MODE_HDMI, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %29 = call i32 @dce_v11_0_afmt_enable(%struct.drm_encoder* %28, i32 1)
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %32 = call i32 @dce_v11_0_afmt_setmode(%struct.drm_encoder* %30, %struct.drm_display_mode* %31)
  br label %33

33:                                               ; preds = %27, %3
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @amdgpu_atombios_encoder_dpms(%struct.drm_encoder*, i32) #1

declare dso_local i32 @dce_v11_0_set_interleave(i32, %struct.drm_display_mode*) #1

declare dso_local i64 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @dce_v11_0_afmt_enable(%struct.drm_encoder*, i32) #1

declare dso_local i32 @dce_v11_0_afmt_setmode(%struct.drm_encoder*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
