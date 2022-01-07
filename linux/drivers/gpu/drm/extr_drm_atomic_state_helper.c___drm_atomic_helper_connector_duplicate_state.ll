; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_state_helper.c___drm_atomic_helper_connector_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_state_helper.c___drm_atomic_helper_connector_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_connector_state = type { i32*, i64, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__drm_atomic_helper_connector_duplicate_state(%struct.drm_connector* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %5 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @memcpy(%struct.drm_connector_state* %5, i32 %8, i32 32)
  %10 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %11 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = call i32 @drm_connector_get(%struct.drm_connector* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %19 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %21 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %26 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @drm_property_blob_get(i64 %27)
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %31 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.drm_connector_state*, i32, i32) #1

declare dso_local i32 @drm_connector_get(%struct.drm_connector*) #1

declare dso_local i32 @drm_property_blob_get(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
