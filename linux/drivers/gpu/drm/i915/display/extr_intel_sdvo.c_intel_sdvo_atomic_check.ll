; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_connector_state = type { i64, i32 }
%struct.intel_sdvo_connector_state = type { i32 }
%struct.drm_crtc_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_atomic_state*)* @intel_sdvo_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_atomic_check(%struct.drm_connector* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.drm_connector_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_sdvo_connector_state*, align 8
  %8 = alloca %struct.intel_sdvo_connector_state*, align 8
  %9 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %4, align 8
  %10 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = call %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state* %10, %struct.drm_connector* %11)
  store %struct.drm_connector_state* %12, %struct.drm_connector_state** %5, align 8
  %13 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %15 = call %struct.drm_connector_state* @drm_atomic_get_old_connector_state(%struct.drm_atomic_state* %13, %struct.drm_connector* %14)
  store %struct.drm_connector_state* %15, %struct.drm_connector_state** %6, align 8
  %16 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %17 = call %struct.intel_sdvo_connector_state* @to_intel_sdvo_connector_state(%struct.drm_connector_state* %16)
  store %struct.intel_sdvo_connector_state* %17, %struct.intel_sdvo_connector_state** %7, align 8
  %18 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %19 = call %struct.intel_sdvo_connector_state* @to_intel_sdvo_connector_state(%struct.drm_connector_state* %18)
  store %struct.intel_sdvo_connector_state* %19, %struct.intel_sdvo_connector_state** %8, align 8
  %20 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %21 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %2
  %25 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %7, align 8
  %26 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %25, i32 0, i32 0
  %27 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %8, align 8
  %28 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %27, i32 0, i32 0
  %29 = call i64 @memcmp(i32* %26, i32* %28, i32 4)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %33 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %32, i32 0, i32 1
  %34 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %35 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %34, i32 0, i32 1
  %36 = call i64 @memcmp(i32* %33, i32* %35, i32 4)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31, %24
  %39 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %40 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %41 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %39, i64 %42)
  store %struct.drm_crtc_state* %43, %struct.drm_crtc_state** %9, align 8
  %44 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %45 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %38, %31, %2
  %47 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %48 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %49 = call i32 @intel_digital_connector_atomic_check(%struct.drm_connector* %47, %struct.drm_atomic_state* %48)
  ret i32 %49
}

declare dso_local %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

declare dso_local %struct.drm_connector_state* @drm_atomic_get_old_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

declare dso_local %struct.intel_sdvo_connector_state* @to_intel_sdvo_connector_state(%struct.drm_connector_state*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state*, i64) #1

declare dso_local i32 @intel_digital_connector_atomic_check(%struct.drm_connector*, %struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
