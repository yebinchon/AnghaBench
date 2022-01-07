; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_state_helper.c___drm_atomic_helper_crtc_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_state_helper.c___drm_atomic_helper_crtc_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %5 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @memcpy(%struct.drm_crtc_state* %5, i32 %8, i32 88)
  %10 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %11 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %10, i32 0, i32 14
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %16 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %15, i32 0, i32 14
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @drm_property_blob_get(i64 %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %21 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %20, i32 0, i32 13
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %26 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %25, i32 0, i32 13
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @drm_property_blob_get(i64 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %31 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %30, i32 0, i32 12
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %36 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %35, i32 0, i32 12
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @drm_property_blob_get(i64 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %41 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %40, i32 0, i32 11
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %46 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %45, i32 0, i32 11
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @drm_property_blob_get(i64 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %51 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %53 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %55 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %57 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %56, i32 0, i32 3
  store i32 0, i32* %57, align 4
  %58 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %59 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %58, i32 0, i32 4
  store i32 0, i32* %59, align 8
  %60 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %61 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %60, i32 0, i32 5
  store i32 0, i32* %61, align 4
  %62 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %63 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %62, i32 0, i32 10
  store i32* null, i32** %63, align 8
  %64 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %65 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %64, i32 0, i32 9
  store i32* null, i32** %65, align 8
  %66 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %67 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %66, i32 0, i32 6
  store i32 0, i32* %67, align 8
  %68 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %69 = call i32 @drm_atomic_crtc_effectively_active(%struct.drm_crtc_state* %68)
  %70 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %71 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 8
  %72 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %73 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %72, i32 0, i32 7
  store i32 0, i32* %73, align 4
  ret void
}

declare dso_local i32 @memcpy(%struct.drm_crtc_state*, i32, i32) #1

declare dso_local i32 @drm_property_blob_get(i64) #1

declare dso_local i32 @drm_atomic_crtc_effectively_active(%struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
