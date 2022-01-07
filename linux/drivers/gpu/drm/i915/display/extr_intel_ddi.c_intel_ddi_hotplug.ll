; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_connector = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.intel_digital_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }

@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i64 0, align 8
@EDEADLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Acquiring modeset locks failed with %i\0A\00", align 1
@INTEL_HOTPLUG_UNCHANGED = common dso_local global i32 0, align 4
@INTEL_HOTPLUG_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_connector*, i32)* @intel_ddi_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ddi_hotplug(%struct.intel_encoder* %0, %struct.intel_connector* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_digital_port*, align 8
  %8 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_connector* %1, %struct.intel_connector** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 0
  %13 = call %struct.intel_digital_port* @enc_to_dig_port(i32* %12)
  store %struct.intel_digital_port* %13, %struct.intel_digital_port** %7, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %15 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @intel_encoder_hotplug(%struct.intel_encoder* %14, %struct.intel_connector* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = call i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %8, i32 0)
  br label %19

19:                                               ; preds = %37, %3
  %20 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %21 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DRM_MODE_CONNECTOR_HDMIA, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %28 = call i32 @intel_hdmi_reset_link(%struct.intel_encoder* %27, %struct.drm_modeset_acquire_ctx* %8)
  store i32 %28, i32* %10, align 4
  br label %32

29:                                               ; preds = %19
  %30 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %31 = call i32 @intel_dp_retrain_link(%struct.intel_encoder* %30, %struct.drm_modeset_acquire_ctx* %8)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @EDEADLK, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %8)
  br label %19

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = call i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %8)
  %42 = call i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %8)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @WARN(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @INTEL_HOTPLUG_UNCHANGED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %54 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @INTEL_HOTPLUG_RETRY, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %52, %49, %40
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(i32*) #1

declare dso_local i32 @intel_encoder_hotplug(%struct.intel_encoder*, %struct.intel_connector*, i32) #1

declare dso_local i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx*, i32) #1

declare dso_local i32 @intel_hdmi_reset_link(%struct.intel_encoder*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @intel_dp_retrain_link(%struct.intel_encoder*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
