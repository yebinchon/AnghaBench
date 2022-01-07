; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_virtual.c_dce_virtual_crtc_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_virtual.c_dce_virtual_crtc_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_crtc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @dce_virtual_crtc_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_virtual_crtc_dpms(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_crtc*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %6, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %15)
  store %struct.amdgpu_crtc* %16, %struct.amdgpu_crtc** %7, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %18 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %43

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %43 [
    i32 130, label %23
    i32 129, label %38
    i32 128, label %38
    i32 131, label %38
  ]

23:                                               ; preds = %21
  %24 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %25 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %27 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %28 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @amdgpu_display_crtc_idx_to_irq_type(%struct.amdgpu_device* %26, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @amdgpu_irq_update(%struct.amdgpu_device* %31, i32* %33, i32 %34)
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %37 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %36)
  br label %43

38:                                               ; preds = %21, %21, %21
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %40 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %39)
  %41 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %42 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %20, %21, %38, %23
  ret void
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_display_crtc_idx_to_irq_type(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_irq_update(%struct.amdgpu_device*, i32*, i32) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
