; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_dev_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_dev_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_device*)* }

@DRIVER_LEGACY = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@DRM_MINOR_PRIMARY = common dso_local global i32 0, align 4
@DRM_MINOR_RENDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_dev_unregister(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %3 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %4 = load i32, i32* @DRIVER_LEGACY, align 4
  %5 = call i64 @drm_core_check_feature(%struct.drm_device* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = call i32 @drm_lastclose(%struct.drm_device* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = call i32 @drm_client_dev_unregister(%struct.drm_device* %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %16 = load i32, i32* @DRIVER_MODESET, align 4
  %17 = call i64 @drm_core_check_feature(%struct.drm_device* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %21 = call i32 @drm_modeset_unregister_all(%struct.drm_device* %20)
  br label %22

22:                                               ; preds = %19, %10
  %23 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %26, align 8
  %28 = icmp ne i32 (%struct.drm_device*)* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %33, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %36 = call i32 %34(%struct.drm_device* %35)
  br label %37

37:                                               ; preds = %29, %22
  %38 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %44 = call i32 @drm_pci_agp_destroy(%struct.drm_device* %43)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %47 = call i32 @drm_legacy_rmmaps(%struct.drm_device* %46)
  %48 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %49 = call i32 @remove_compat_control_link(%struct.drm_device* %48)
  %50 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %51 = load i32, i32* @DRM_MINOR_PRIMARY, align 4
  %52 = call i32 @drm_minor_unregister(%struct.drm_device* %50, i32 %51)
  %53 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %54 = load i32, i32* @DRM_MINOR_RENDER, align 4
  %55 = call i32 @drm_minor_unregister(%struct.drm_device* %53, i32 %54)
  ret void
}

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_lastclose(%struct.drm_device*) #1

declare dso_local i32 @drm_client_dev_unregister(%struct.drm_device*) #1

declare dso_local i32 @drm_modeset_unregister_all(%struct.drm_device*) #1

declare dso_local i32 @drm_pci_agp_destroy(%struct.drm_device*) #1

declare dso_local i32 @drm_legacy_rmmaps(%struct.drm_device*) #1

declare dso_local i32 @remove_compat_control_link(%struct.drm_device*) #1

declare dso_local i32 @drm_minor_unregister(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
