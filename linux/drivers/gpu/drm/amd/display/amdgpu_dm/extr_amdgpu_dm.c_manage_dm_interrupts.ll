; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_manage_dm_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_manage_dm_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_crtc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_crtc*, i32)* @manage_dm_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @manage_dm_interrupts(%struct.amdgpu_device* %0, %struct.amdgpu_crtc* %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_crtc* %1, %struct.amdgpu_crtc** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %10 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @amdgpu_display_crtc_idx_to_irq_type(%struct.amdgpu_device* %8, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %16, i32 0, i32 0
  %18 = call i32 @drm_crtc_vblank_on(i32* %17)
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @amdgpu_irq_get(%struct.amdgpu_device* %19, i32* %21, i32 %22)
  br label %33

24:                                               ; preds = %3
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @amdgpu_irq_put(%struct.amdgpu_device* %25, i32* %27, i32 %28)
  %30 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %31 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %30, i32 0, i32 0
  %32 = call i32 @drm_crtc_vblank_off(i32* %31)
  br label %33

33:                                               ; preds = %24, %15
  ret void
}

declare dso_local i32 @amdgpu_display_crtc_idx_to_irq_type(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @drm_crtc_vblank_on(i32*) #1

declare dso_local i32 @amdgpu_irq_get(%struct.amdgpu_device*, i32*, i32) #1

declare dso_local i32 @amdgpu_irq_put(%struct.amdgpu_device*, i32*, i32) #1

declare dso_local i32 @drm_crtc_vblank_off(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
