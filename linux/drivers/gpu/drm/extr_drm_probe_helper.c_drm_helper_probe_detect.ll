; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_probe_helper.c_drm_helper_probe_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_probe_helper.c_drm_helper_probe_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_3__*, %struct.drm_device*, %struct.drm_connector_helper_funcs* }
%struct.TYPE_3__ = type { i32 (%struct.drm_connector*, i32)* }
%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_connector_helper_funcs = type { i32 (%struct.drm_connector.0*, %struct.drm_modeset_acquire_ctx*, i32)* }
%struct.drm_connector.0 = type opaque
%struct.drm_modeset_acquire_ctx = type { i32 }

@connector_status_connected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_helper_probe_detect(%struct.drm_connector* %0, %struct.drm_modeset_acquire_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_connector_helper_funcs*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_modeset_acquire_ctx* %1, %struct.drm_modeset_acquire_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 2
  %13 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %12, align 8
  store %struct.drm_connector_helper_funcs* %13, %struct.drm_connector_helper_funcs** %8, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 1
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %9, align 8
  %17 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %6, align 8
  %18 = icmp ne %struct.drm_modeset_acquire_ctx* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @drm_helper_probe_detect_ctx(%struct.drm_connector* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %65

23:                                               ; preds = %3
  %24 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %6, align 8
  %28 = call i32 @drm_modeset_lock(i32* %26, %struct.drm_modeset_acquire_ctx* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %65

33:                                               ; preds = %23
  %34 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %8, align 8
  %35 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %34, i32 0, i32 0
  %36 = load i32 (%struct.drm_connector.0*, %struct.drm_modeset_acquire_ctx*, i32)*, i32 (%struct.drm_connector.0*, %struct.drm_modeset_acquire_ctx*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.drm_connector.0*, %struct.drm_modeset_acquire_ctx*, i32)* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %8, align 8
  %40 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %39, i32 0, i32 0
  %41 = load i32 (%struct.drm_connector.0*, %struct.drm_modeset_acquire_ctx*, i32)*, i32 (%struct.drm_connector.0*, %struct.drm_modeset_acquire_ctx*, i32)** %40, align 8
  %42 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %43 = bitcast %struct.drm_connector* %42 to %struct.drm_connector.0*
  %44 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 %41(%struct.drm_connector.0* %43, %struct.drm_modeset_acquire_ctx* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %65

47:                                               ; preds = %33
  %48 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %49 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32 (%struct.drm_connector*, i32)*, i32 (%struct.drm_connector*, i32)** %51, align 8
  %53 = icmp ne i32 (%struct.drm_connector*, i32)* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %56 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32 (%struct.drm_connector*, i32)*, i32 (%struct.drm_connector*, i32)** %58, align 8
  %60 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 %59(%struct.drm_connector* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %47
  %64 = load i32, i32* @connector_status_connected, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %54, %38, %31, %19
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @drm_helper_probe_detect_ctx(%struct.drm_connector*, i32) #1

declare dso_local i32 @drm_modeset_lock(i32*, %struct.drm_modeset_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
