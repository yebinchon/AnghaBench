; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_unload_kms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_unload_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device*, i32 }
%struct.radeon_device = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_driver_unload_kms(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.radeon_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  store %struct.radeon_device* %6, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = icmp eq %struct.radeon_device* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %41

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %36

16:                                               ; preds = %10
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = call i64 @radeon_is_px(%struct.drm_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pm_runtime_get_sync(i32 %23)
  %25 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pm_runtime_forbid(i32 %27)
  br label %29

29:                                               ; preds = %20, %16
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = call i32 @radeon_acpi_fini(%struct.radeon_device* %30)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = call i32 @radeon_modeset_fini(%struct.radeon_device* %32)
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = call i32 @radeon_device_fini(%struct.radeon_device* %34)
  br label %36

36:                                               ; preds = %29, %15
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @kfree(%struct.radeon_device* %37)
  %39 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  store %struct.radeon_device* null, %struct.radeon_device** %40, align 8
  br label %41

41:                                               ; preds = %36, %9
  ret void
}

declare dso_local i64 @radeon_is_px(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_forbid(i32) #1

declare dso_local i32 @radeon_acpi_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_modeset_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_device_fini(%struct.radeon_device*) #1

declare dso_local i32 @kfree(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
