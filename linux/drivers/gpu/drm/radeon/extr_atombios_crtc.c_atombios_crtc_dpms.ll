; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32, i32 }

@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atombios_crtc_dpms(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %6, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %15 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %14)
  store %struct.radeon_crtc* %15, %struct.radeon_crtc** %7, align 8
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %89 [
    i32 130, label %17
    i32 129, label %51
    i32 128, label %51
    i32 131, label %51
  ]

17:                                               ; preds = %2
  %18 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %19 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %21 = load i32, i32* @ATOM_ENABLE, align 4
  %22 = call i32 @atombios_enable_crtc(%struct.drm_crtc* %20, i32 %21)
  %23 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %24 = call i32 @ASIC_IS_DCE3(%struct.radeon_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %28 = call i32 @ASIC_IS_DCE6(%struct.radeon_device* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %32 = load i32, i32* @ATOM_ENABLE, align 4
  %33 = call i32 @atombios_enable_crtc_memreq(%struct.drm_crtc* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %26, %17
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %36 = load i32, i32* @ATOM_DISABLE, align 4
  %37 = call i32 @atombios_blank_crtc(%struct.drm_crtc* %35, i32 %36)
  %38 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %42 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %47 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %46)
  br label %48

48:                                               ; preds = %45, %34
  %49 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %50 = call i32 @radeon_crtc_load_lut(%struct.drm_crtc* %49)
  br label %89

51:                                               ; preds = %2, %2, %2
  %52 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %56 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %61 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %60)
  br label %62

62:                                               ; preds = %59, %51
  %63 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %64 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %69 = load i32, i32* @ATOM_ENABLE, align 4
  %70 = call i32 @atombios_blank_crtc(%struct.drm_crtc* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %73 = call i32 @ASIC_IS_DCE3(%struct.radeon_device* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %77 = call i32 @ASIC_IS_DCE6(%struct.radeon_device* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %81 = load i32, i32* @ATOM_DISABLE, align 4
  %82 = call i32 @atombios_enable_crtc_memreq(%struct.drm_crtc* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %75, %71
  %84 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %85 = load i32, i32* @ATOM_DISABLE, align 4
  %86 = call i32 @atombios_enable_crtc(%struct.drm_crtc* %84, i32 %85)
  %87 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %88 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %2, %83, %48
  %90 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %91 = call i32 @radeon_pm_compute_clocks(%struct.radeon_device* %90)
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @atombios_enable_crtc(%struct.drm_crtc*, i32) #1

declare dso_local i32 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i32 @atombios_enable_crtc_memreq(%struct.drm_crtc*, i32) #1

declare dso_local i32 @atombios_blank_crtc(%struct.drm_crtc*, i32) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

declare dso_local i32 @radeon_crtc_load_lut(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @radeon_pm_compute_clocks(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
