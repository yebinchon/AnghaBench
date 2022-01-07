; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hotplug.c_intel_encoder_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hotplug.c_intel_encoder_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_connector = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, %struct.drm_device* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@INTEL_HOTPLUG_UNCHANGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"[CONNECTOR:%d:%s] status updated from %s to %s\0A\00", align 1
@INTEL_HOTPLUG_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_encoder_hotplug(%struct.intel_encoder* %0, %struct.intel_connector* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_connector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_connector* %1, %struct.intel_connector** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %11 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @mutex_is_locked(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %23 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %27 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %26, i32 0, i32 0
  %28 = call i32 @drm_helper_probe_detect(%struct.TYPE_6__* %27, i32* null, i32 0)
  %29 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %30 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %34 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %32, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* @INTEL_HOTPLUG_UNCHANGED, align 4
  store i32 %39, i32* %4, align 4
  br label %59

40:                                               ; preds = %3
  %41 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %42 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %47 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @drm_get_connector_status_name(i32 %50)
  %52 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %53 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @drm_get_connector_status_name(i32 %55)
  %57 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %49, i32 %51, i32 %56)
  %58 = load i32, i32* @INTEL_HOTPLUG_CHANGED, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %40, %38
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @drm_helper_probe_detect(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @drm_get_connector_status_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
