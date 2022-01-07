; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_drv.c_tilcdc_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_drv.c_tilcdc_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.tilcdc_drm_private* }
%struct.tilcdc_drm_private = type { i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CPUFREQ_TRANSITION_NOTIFIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @tilcdc_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tilcdc_fini(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.tilcdc_drm_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 1
  %6 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %5, align 8
  store %struct.tilcdc_drm_private* %6, %struct.tilcdc_drm_private** %3, align 8
  %7 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %3, align 8
  %8 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %3, align 8
  %13 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @tilcdc_crtc_shutdown(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %3, align 8
  %18 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = call i32 @drm_dev_unregister(%struct.drm_device* %22)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %26 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = call i32 @drm_irq_uninstall(%struct.drm_device* %27)
  %29 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %30 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %29)
  %31 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %3, align 8
  %32 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %3, align 8
  %37 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @clk_put(i64 %38)
  br label %40

40:                                               ; preds = %35, %24
  %41 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %3, align 8
  %42 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %3, align 8
  %47 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @iounmap(i64 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %3, align 8
  %52 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %3, align 8
  %57 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @flush_workqueue(i64 %58)
  %60 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %3, align 8
  %61 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @destroy_workqueue(i64 %62)
  br label %64

64:                                               ; preds = %55, %50
  %65 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %66 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %65, i32 0, i32 1
  store %struct.tilcdc_drm_private* null, %struct.tilcdc_drm_private** %66, align 8
  %67 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %68 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @pm_runtime_disable(i32 %69)
  %71 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %72 = call i32 @drm_dev_put(%struct.drm_device* %71)
  ret void
}

declare dso_local i32 @tilcdc_crtc_shutdown(i64) #1

declare dso_local i32 @drm_dev_unregister(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @drm_irq_uninstall(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @clk_put(i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @flush_workqueue(i64) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
