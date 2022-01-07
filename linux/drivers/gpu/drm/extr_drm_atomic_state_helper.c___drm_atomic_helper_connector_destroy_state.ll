; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_state_helper.c___drm_atomic_helper_connector_destroy_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_state_helper.c___drm_atomic_helper_connector_destroy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { i32, i64, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__drm_atomic_helper_connector_destroy_state(%struct.drm_connector_state* %0) #0 {
  %2 = alloca %struct.drm_connector_state*, align 8
  store %struct.drm_connector_state* %0, %struct.drm_connector_state** %2, align 8
  %3 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  %4 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  %9 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @drm_connector_put(i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  %14 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  %19 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @drm_crtc_commit_put(i64 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  %24 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  %29 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @drm_writeback_cleanup_job(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  %34 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @drm_property_blob_put(i32 %35)
  ret void
}

declare dso_local i32 @drm_connector_put(i32) #1

declare dso_local i32 @drm_crtc_commit_put(i64) #1

declare dso_local i32 @drm_writeback_cleanup_job(i64) #1

declare dso_local i32 @drm_property_blob_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
