; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_crtc_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_crtc_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, i32 }
%struct.amdgpu_crtc = type { i32, i32 }

@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @dce_v10_0_crtc_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v10_0_crtc_dpms(%struct.drm_crtc* %0, i32 %1) #0 {
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
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %71 [
    i32 130, label %18
    i32 129, label %50
    i32 128, label %50
    i32 131, label %50
  ]

18:                                               ; preds = %2
  %19 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %20 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %22 = load i32, i32* @ATOM_ENABLE, align 4
  %23 = call i32 @amdgpu_atombios_crtc_enable(%struct.drm_crtc* %21, i32 %22)
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %25 = call i32 @dce_v10_0_vga_enable(%struct.drm_crtc* %24, i32 1)
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %27 = load i32, i32* @ATOM_DISABLE, align 4
  %28 = call i32 @amdgpu_atombios_crtc_blank(%struct.drm_crtc* %26, i32 %27)
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %30 = call i32 @dce_v10_0_vga_enable(%struct.drm_crtc* %29, i32 0)
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %32 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %33 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @amdgpu_display_crtc_idx_to_irq_type(%struct.amdgpu_device* %31, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 1
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @amdgpu_irq_update(%struct.amdgpu_device* %36, i32* %38, i32 %39)
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @amdgpu_irq_update(%struct.amdgpu_device* %41, i32* %43, i32 %44)
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %47 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %46)
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %49 = call i32 @dce_v10_0_crtc_load_lut(%struct.drm_crtc* %48)
  br label %71

50:                                               ; preds = %2, %2, %2
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %52 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %51)
  %53 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %54 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %59 = call i32 @dce_v10_0_vga_enable(%struct.drm_crtc* %58, i32 1)
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %61 = load i32, i32* @ATOM_ENABLE, align 4
  %62 = call i32 @amdgpu_atombios_crtc_blank(%struct.drm_crtc* %60, i32 %61)
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %64 = call i32 @dce_v10_0_vga_enable(%struct.drm_crtc* %63, i32 0)
  br label %65

65:                                               ; preds = %57, %50
  %66 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %67 = load i32, i32* @ATOM_DISABLE, align 4
  %68 = call i32 @amdgpu_atombios_crtc_enable(%struct.drm_crtc* %66, i32 %67)
  %69 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %70 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %2, %65, %18
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %73 = call i32 @amdgpu_pm_compute_clocks(%struct.amdgpu_device* %72)
  ret void
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @amdgpu_atombios_crtc_enable(%struct.drm_crtc*, i32) #1

declare dso_local i32 @dce_v10_0_vga_enable(%struct.drm_crtc*, i32) #1

declare dso_local i32 @amdgpu_atombios_crtc_blank(%struct.drm_crtc*, i32) #1

declare dso_local i32 @amdgpu_display_crtc_idx_to_irq_type(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_irq_update(%struct.amdgpu_device*, i32*, i32) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

declare dso_local i32 @dce_v10_0_crtc_load_lut(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @amdgpu_pm_compute_clocks(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
