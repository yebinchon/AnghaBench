; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_crtc.c_atmel_hlcdc_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_crtc.c_atmel_hlcdc_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.atmel_hlcdc_crtc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@ATMEL_HLCDC_EN = common dso_local global i32 0, align 4
@ATMEL_HLCDC_PIXEL_CLK = common dso_local global i32 0, align 4
@ATMEL_HLCDC_SR = common dso_local global i32 0, align 4
@ATMEL_HLCDC_SYNC = common dso_local global i32 0, align 4
@ATMEL_HLCDC_DISP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @atmel_hlcdc_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hlcdc_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.atmel_hlcdc_crtc*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %13 = call %struct.atmel_hlcdc_crtc* @drm_crtc_to_atmel_hlcdc_crtc(%struct.drm_crtc* %12)
  store %struct.atmel_hlcdc_crtc* %13, %struct.atmel_hlcdc_crtc** %6, align 8
  %14 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %6, align 8
  %15 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.regmap*, %struct.regmap** %19, align 8
  store %struct.regmap* %20, %struct.regmap** %7, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pm_runtime_get_sync(i32 %23)
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pm_runtime_forbid(i32 %27)
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pinctrl_pm_select_default_state(i32 %31)
  %33 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %6, align 8
  %34 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @clk_prepare_enable(i32 %39)
  %41 = load %struct.regmap*, %struct.regmap** %7, align 8
  %42 = load i32, i32* @ATMEL_HLCDC_EN, align 4
  %43 = load i32, i32* @ATMEL_HLCDC_PIXEL_CLK, align 4
  %44 = call i32 @regmap_write(%struct.regmap* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %58, %2
  %46 = load %struct.regmap*, %struct.regmap** %7, align 8
  %47 = load i32, i32* @ATMEL_HLCDC_SR, align 4
  %48 = call i32 @regmap_read(%struct.regmap* %46, i32 %47, i32* %8)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @ATMEL_HLCDC_PIXEL_CLK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %50, %45
  %57 = phi i1 [ false, %45 ], [ %55, %50 ]
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = call i32 (...) @cpu_relax()
  br label %45

60:                                               ; preds = %56
  %61 = load %struct.regmap*, %struct.regmap** %7, align 8
  %62 = load i32, i32* @ATMEL_HLCDC_EN, align 4
  %63 = load i32, i32* @ATMEL_HLCDC_SYNC, align 4
  %64 = call i32 @regmap_write(%struct.regmap* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %78, %60
  %66 = load %struct.regmap*, %struct.regmap** %7, align 8
  %67 = load i32, i32* @ATMEL_HLCDC_SR, align 4
  %68 = call i32 @regmap_read(%struct.regmap* %66, i32 %67, i32* %8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @ATMEL_HLCDC_SYNC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %70, %65
  %77 = phi i1 [ false, %65 ], [ %75, %70 ]
  br i1 %77, label %78, label %80

78:                                               ; preds = %76
  %79 = call i32 (...) @cpu_relax()
  br label %65

80:                                               ; preds = %76
  %81 = load %struct.regmap*, %struct.regmap** %7, align 8
  %82 = load i32, i32* @ATMEL_HLCDC_EN, align 4
  %83 = load i32, i32* @ATMEL_HLCDC_DISP, align 4
  %84 = call i32 @regmap_write(%struct.regmap* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %98, %80
  %86 = load %struct.regmap*, %struct.regmap** %7, align 8
  %87 = load i32, i32* @ATMEL_HLCDC_SR, align 4
  %88 = call i32 @regmap_read(%struct.regmap* %86, i32 %87, i32* %8)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @ATMEL_HLCDC_DISP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %90, %85
  %97 = phi i1 [ false, %85 ], [ %95, %90 ]
  br i1 %97, label %98, label %100

98:                                               ; preds = %96
  %99 = call i32 (...) @cpu_relax()
  br label %85

100:                                              ; preds = %96
  %101 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %102 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @pm_runtime_put_sync(i32 %103)
  %105 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %106 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %105)
  ret void
}

declare dso_local %struct.atmel_hlcdc_crtc* @drm_crtc_to_atmel_hlcdc_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_forbid(i32) #1

declare dso_local i32 @pinctrl_pm_select_default_state(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
