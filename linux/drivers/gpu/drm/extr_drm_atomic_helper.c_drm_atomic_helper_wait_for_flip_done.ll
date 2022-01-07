; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_wait_for_flip_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_wait_for_flip_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_atomic_state = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.drm_crtc*, %struct.drm_crtc_commit* }
%struct.drm_crtc = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.drm_crtc_commit = type { i32 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[CRTC:%d:%s] flip_done timed out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_atomic_helper_wait_for_flip_done(%struct.drm_device* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc_commit*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %4, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %57, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %9
  %17 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %18 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.drm_crtc_commit*, %struct.drm_crtc_commit** %23, align 8
  store %struct.drm_crtc_commit* %24, %struct.drm_crtc_commit** %7, align 8
  %25 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %26 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %31, align 8
  store %struct.drm_crtc* %32, %struct.drm_crtc** %5, align 8
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %34 = icmp ne %struct.drm_crtc* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %16
  %36 = load %struct.drm_crtc_commit*, %struct.drm_crtc_commit** %7, align 8
  %37 = icmp ne %struct.drm_crtc_commit* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %16
  br label %57

39:                                               ; preds = %35
  %40 = load %struct.drm_crtc_commit*, %struct.drm_crtc_commit** %7, align 8
  %41 = getelementptr inbounds %struct.drm_crtc_commit, %struct.drm_crtc_commit* %40, i32 0, i32 0
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 10, %42
  %44 = call i32 @wait_for_completion_timeout(i32* %41, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %49 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %53 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %47, %39
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %9

60:                                               ; preds = %9
  %61 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %62 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = icmp ne %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %67 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = call i32 @complete_all(i32* %69)
  br label %71

71:                                               ; preds = %65, %60
  ret void
}

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
