; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_crtc.c_atmel_hlcdc_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_crtc.c_atmel_hlcdc_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.atmel_hlcdc_crtc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@ATMEL_HLCDC_DIS = common dso_local global i32 0, align 4
@ATMEL_HLCDC_DISP = common dso_local global i32 0, align 4
@ATMEL_HLCDC_SR = common dso_local global i32 0, align 4
@ATMEL_HLCDC_SYNC = common dso_local global i32 0, align 4
@ATMEL_HLCDC_PIXEL_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @atmel_hlcdc_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hlcdc_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
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
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %22 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %21)
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pm_runtime_get_sync(i32 %25)
  %27 = load %struct.regmap*, %struct.regmap** %7, align 8
  %28 = load i32, i32* @ATMEL_HLCDC_DIS, align 4
  %29 = load i32, i32* @ATMEL_HLCDC_DISP, align 4
  %30 = call i32 @regmap_write(%struct.regmap* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %43, %2
  %32 = load %struct.regmap*, %struct.regmap** %7, align 8
  %33 = load i32, i32* @ATMEL_HLCDC_SR, align 4
  %34 = call i32 @regmap_read(%struct.regmap* %32, i32 %33, i32* %8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @ATMEL_HLCDC_DISP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = call i32 (...) @cpu_relax()
  br label %31

45:                                               ; preds = %41
  %46 = load %struct.regmap*, %struct.regmap** %7, align 8
  %47 = load i32, i32* @ATMEL_HLCDC_DIS, align 4
  %48 = load i32, i32* @ATMEL_HLCDC_SYNC, align 4
  %49 = call i32 @regmap_write(%struct.regmap* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %62, %45
  %51 = load %struct.regmap*, %struct.regmap** %7, align 8
  %52 = load i32, i32* @ATMEL_HLCDC_SR, align 4
  %53 = call i32 @regmap_read(%struct.regmap* %51, i32 %52, i32* %8)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ATMEL_HLCDC_SYNC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi i1 [ false, %50 ], [ %59, %55 ]
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  %63 = call i32 (...) @cpu_relax()
  br label %50

64:                                               ; preds = %60
  %65 = load %struct.regmap*, %struct.regmap** %7, align 8
  %66 = load i32, i32* @ATMEL_HLCDC_DIS, align 4
  %67 = load i32, i32* @ATMEL_HLCDC_PIXEL_CLK, align 4
  %68 = call i32 @regmap_write(%struct.regmap* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %81, %64
  %70 = load %struct.regmap*, %struct.regmap** %7, align 8
  %71 = load i32, i32* @ATMEL_HLCDC_SR, align 4
  %72 = call i32 @regmap_read(%struct.regmap* %70, i32 %71, i32* %8)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @ATMEL_HLCDC_PIXEL_CLK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i1 [ false, %69 ], [ %78, %74 ]
  br i1 %80, label %81, label %83

81:                                               ; preds = %79
  %82 = call i32 (...) @cpu_relax()
  br label %69

83:                                               ; preds = %79
  %84 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %6, align 8
  %85 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @clk_disable_unprepare(i32 %90)
  %92 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %93 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @pinctrl_pm_select_sleep_state(i32 %94)
  %96 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %97 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pm_runtime_allow(i32 %98)
  %100 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %101 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pm_runtime_put_sync(i32 %102)
  ret void
}

declare dso_local %struct.atmel_hlcdc_crtc* @drm_crtc_to_atmel_hlcdc_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pinctrl_pm_select_sleep_state(i32) #1

declare dso_local i32 @pm_runtime_allow(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
