; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_state_helper.c___drm_atomic_helper_crtc_destroy_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_state_helper.c___drm_atomic_helper_crtc_destroy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__drm_atomic_helper_crtc_destroy_state(%struct.drm_crtc_state* %0) #0 {
  %2 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_crtc_state* %0, %struct.drm_crtc_state** %2, align 8
  %3 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  %4 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %3, i32 0, i32 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %39

7:                                                ; preds = %1
  %8 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  %14 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  %21 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @drm_crtc_commit_put(%struct.TYPE_2__* %22)
  br label %24

24:                                               ; preds = %19, %12, %7
  %25 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  %26 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @kfree(i32* %29)
  %31 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  %32 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %31, i32 0, i32 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  %36 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 @drm_crtc_commit_put(%struct.TYPE_2__* %37)
  br label %39

39:                                               ; preds = %24, %1
  %40 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  %41 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @drm_property_blob_put(i32 %42)
  %44 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  %45 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @drm_property_blob_put(i32 %46)
  %48 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  %49 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @drm_property_blob_put(i32 %50)
  %52 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  %53 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @drm_property_blob_put(i32 %54)
  ret void
}

declare dso_local i32 @drm_crtc_commit_put(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @drm_property_blob_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
