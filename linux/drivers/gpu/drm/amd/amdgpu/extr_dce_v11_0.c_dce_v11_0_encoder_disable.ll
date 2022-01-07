; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.amdgpu_encoder = type { i64, %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { i32 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_HDMI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @dce_v11_0_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v11_0_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.amdgpu_encoder*, align 8
  %4 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %5)
  store %struct.amdgpu_encoder* %6, %struct.amdgpu_encoder** %3, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %8 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %9 = call i32 @amdgpu_atombios_encoder_dpms(%struct.drm_encoder* %7, i32 %8)
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %11 = call i64 @amdgpu_atombios_encoder_is_digital(%struct.drm_encoder* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %15 = call i64 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %14)
  %16 = load i64, i64* @ATOM_ENCODER_MODE_HDMI, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %20 = call i32 @dce_v11_0_afmt_enable(%struct.drm_encoder* %19, i32 0)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %22, i32 0, i32 1
  %24 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %23, align 8
  store %struct.amdgpu_encoder_atom_dig* %24, %struct.amdgpu_encoder_atom_dig** %4, align 8
  %25 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %4, align 8
  %26 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %3, align 8
  %29 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @amdgpu_atombios_encoder_dpms(%struct.drm_encoder*, i32) #1

declare dso_local i64 @amdgpu_atombios_encoder_is_digital(%struct.drm_encoder*) #1

declare dso_local i64 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @dce_v11_0_afmt_enable(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
