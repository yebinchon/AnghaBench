; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_drv.c_meson_drv_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_drv.c_meson_drv_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.meson_drm = type { i32, i64, i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @meson_drv_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_drv_unbind(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.meson_drm*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.meson_drm* @dev_get_drvdata(%struct.device* %5)
  store %struct.meson_drm* %6, %struct.meson_drm** %3, align 8
  %7 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %8 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %7, i32 0, i32 5
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %11 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %1
  %15 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %16 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %19 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @meson_canvas_free(i64 %17, i32 %20)
  %22 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %23 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %26 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @meson_canvas_free(i64 %24, i32 %27)
  %29 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %30 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %33 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @meson_canvas_free(i64 %31, i32 %34)
  %36 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %37 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %40 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @meson_canvas_free(i64 %38, i32 %41)
  br label %43

43:                                               ; preds = %14, %1
  %44 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %45 = call i32 @drm_dev_unregister(%struct.drm_device* %44)
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = call i32 @drm_irq_uninstall(%struct.drm_device* %46)
  %48 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %49 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %48)
  %50 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %51 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %50)
  %52 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %53 = call i32 @drm_dev_put(%struct.drm_device* %52)
  ret void
}

declare dso_local %struct.meson_drm* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @meson_canvas_free(i64, i32) #1

declare dso_local i32 @drm_dev_unregister(%struct.drm_device*) #1

declare dso_local i32 @drm_irq_uninstall(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
