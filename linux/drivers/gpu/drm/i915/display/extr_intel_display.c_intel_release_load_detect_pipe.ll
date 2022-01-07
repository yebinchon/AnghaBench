; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_release_load_detect_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_release_load_detect_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_load_detect_pipe = type { %struct.drm_atomic_state* }
%struct.drm_atomic_state = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.intel_encoder = type { %struct.drm_encoder }
%struct.drm_encoder = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"[CONNECTOR:%d:%s], [ENCODER:%d:%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Couldn't release load detect pipe: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_release_load_detect_pipe(%struct.drm_connector* %0, %struct.intel_load_detect_pipe* %1, %struct.drm_modeset_acquire_ctx* %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.intel_load_detect_pipe*, align 8
  %6 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %7 = alloca %struct.intel_encoder*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.drm_atomic_state*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.intel_load_detect_pipe* %1, %struct.intel_load_detect_pipe** %5, align 8
  store %struct.drm_modeset_acquire_ctx* %2, %struct.drm_modeset_acquire_ctx** %6, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call %struct.intel_encoder* @intel_attached_encoder(%struct.drm_connector* %11)
  store %struct.intel_encoder* %12, %struct.intel_encoder** %7, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 0
  store %struct.drm_encoder* %14, %struct.drm_encoder** %8, align 8
  %15 = load %struct.intel_load_detect_pipe*, %struct.intel_load_detect_pipe** %5, align 8
  %16 = getelementptr inbounds %struct.intel_load_detect_pipe, %struct.intel_load_detect_pipe* %15, i32 0, i32 0
  %17 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %16, align 8
  store %struct.drm_atomic_state* %17, %struct.drm_atomic_state** %9, align 8
  %18 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %19 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %26 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %30 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %28, i32 %31)
  %33 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %9, align 8
  %34 = icmp ne %struct.drm_atomic_state* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  br label %48

36:                                               ; preds = %3
  %37 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %9, align 8
  %38 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %6, align 8
  %39 = call i32 @drm_atomic_helper_commit_duplicated_state(%struct.drm_atomic_state* %37, %struct.drm_modeset_acquire_ctx* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  %44 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %9, align 8
  %47 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %46)
  br label %48

48:                                               ; preds = %45, %35
  ret void
}

declare dso_local %struct.intel_encoder* @intel_attached_encoder(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @drm_atomic_helper_commit_duplicated_state(%struct.drm_atomic_state*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
