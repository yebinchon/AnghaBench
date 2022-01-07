; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_get_bpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_get_bpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i64 }
%struct.amdgpu_crtc = type { i32 }

@PANEL_BPC_UNDEFINE = common dso_local global i32 0, align 4
@PANEL_6BIT_PER_COLOR = common dso_local global i32 0, align 4
@PANEL_8BIT_PER_COLOR = common dso_local global i32 0, align 4
@PANEL_10BIT_PER_COLOR = common dso_local global i32 0, align 4
@PANEL_12BIT_PER_COLOR = common dso_local global i32 0, align 4
@PANEL_16BIT_PER_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*)* @amdgpu_atombios_encoder_get_bpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_atombios_encoder_get_bpc(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_crtc*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 8, i32* %4, align 4
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %7 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(i64 %13)
  store %struct.amdgpu_crtc* %14, %struct.amdgpu_crtc** %5, align 8
  %15 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %10, %1
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %25 [
    i32 0, label %20
    i32 6, label %22
    i32 8, label %24
    i32 10, label %27
    i32 12, label %29
    i32 16, label %31
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @PANEL_BPC_UNDEFINE, align 4
  store i32 %21, i32* %2, align 4
  br label %33

22:                                               ; preds = %18
  %23 = load i32, i32* @PANEL_6BIT_PER_COLOR, align 4
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %18, %24
  %26 = load i32, i32* @PANEL_8BIT_PER_COLOR, align 4
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %18
  %28 = load i32, i32* @PANEL_10BIT_PER_COLOR, align 4
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %18
  %30 = load i32, i32* @PANEL_12BIT_PER_COLOR, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %18
  %32 = load i32, i32* @PANEL_16BIT_PER_COLOR, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %29, %27, %25, %22, %20
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
