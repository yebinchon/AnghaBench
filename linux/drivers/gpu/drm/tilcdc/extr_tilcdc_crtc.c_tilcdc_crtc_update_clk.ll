; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_update_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_update_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.tilcdc_drm_private* }
%struct.tilcdc_drm_private = type { i32 }
%struct.tilcdc_crtc = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tilcdc_crtc_update_clk(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.tilcdc_drm_private*, align 8
  %5 = alloca %struct.tilcdc_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 1
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %10, align 8
  store %struct.tilcdc_drm_private* %11, %struct.tilcdc_drm_private** %4, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = call %struct.tilcdc_crtc* @to_tilcdc_crtc(%struct.drm_crtc* %12)
  store %struct.tilcdc_crtc* %13, %struct.tilcdc_crtc** %5, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 0
  %16 = call i32 @drm_modeset_lock(i32* %15, i32* null)
  %17 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %18 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %4, align 8
  %21 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @clk_get_rate(i32 %22)
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %1
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %27 = call i64 @tilcdc_crtc_is_on(%struct.drm_crtc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pm_runtime_get_sync(i32 %32)
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %35 = call i32 @tilcdc_crtc_disable(%struct.drm_crtc* %34)
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %37 = call i32 @tilcdc_crtc_set_clk(%struct.drm_crtc* %36)
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %39 = call i32 @tilcdc_crtc_enable(%struct.drm_crtc* %38)
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pm_runtime_put_sync(i32 %42)
  br label %44

44:                                               ; preds = %29, %25
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %47 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %46, i32 0, i32 0
  %48 = call i32 @drm_modeset_unlock(i32* %47)
  ret void
}

declare dso_local %struct.tilcdc_crtc* @to_tilcdc_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @drm_modeset_lock(i32*, i32*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @tilcdc_crtc_is_on(%struct.drm_crtc*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @tilcdc_crtc_disable(%struct.drm_crtc*) #1

declare dso_local i32 @tilcdc_crtc_set_clk(%struct.drm_crtc*) #1

declare dso_local i32 @tilcdc_crtc_enable(%struct.drm_crtc*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @drm_modeset_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
