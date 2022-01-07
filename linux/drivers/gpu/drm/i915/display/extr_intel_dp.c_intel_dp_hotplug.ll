; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_connector = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }

@EDEADLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Acquiring modeset locks failed with %i\0A\00", align 1
@INTEL_HOTPLUG_UNCHANGED = common dso_local global i32 0, align 4
@INTEL_HOTPLUG_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_connector*, i32)* @intel_dp_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_hotplug(%struct.intel_encoder* %0, %struct.intel_connector* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_connector* %1, %struct.intel_connector** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %11 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @intel_encoder_hotplug(%struct.intel_encoder* %10, %struct.intel_connector* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = call i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %7, i32 0)
  br label %15

15:                                               ; preds = %22, %3
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %17 = call i32 @intel_dp_retrain_link(%struct.intel_encoder* %16, %struct.drm_modeset_acquire_ctx* %7)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @EDEADLK, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %7)
  br label %15

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = call i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %7)
  %27 = call i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %7)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @WARN(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @INTEL_HOTPLUG_UNCHANGED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @INTEL_HOTPLUG_RETRY, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %34, %25
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local i32 @intel_encoder_hotplug(%struct.intel_encoder*, %struct.intel_connector*, i32) #1

declare dso_local i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx*, i32) #1

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
