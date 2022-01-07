; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i32 }
%struct.drm_i915_private = type { %struct.intel_fbc }
%struct.intel_fbc = type { i32, i32, i8*, i32, %struct.intel_crtc* }

@.str = private unnamed_addr constant [25 x i8] c"not enough stolen memory\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Enabling FBC on pipe %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"FBC enabled but not active yet\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_fbc_enable(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1, %struct.intel_plane_state* %2) #0 {
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_fbc*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.intel_plane_state* %2, %struct.intel_plane_state** %6, align 8
  %9 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %10 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %7, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  store %struct.intel_fbc* %15, %struct.intel_fbc** %8, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %17 = call i32 @fbc_supported(%struct.drm_i915_private* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %97

20:                                               ; preds = %3
  %21 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %22 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %21, i32 0, i32 3
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %25 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %20
  %29 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %30 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %29, i32 0, i32 4
  %31 = load %struct.intel_crtc*, %struct.intel_crtc** %30, align 8
  %32 = icmp eq %struct.intel_crtc* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %36 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %35, i32 0, i32 4
  %37 = load %struct.intel_crtc*, %struct.intel_crtc** %36, align 8
  %38 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %39 = icmp eq %struct.intel_crtc* %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %42 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %49 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @WARN_ON(i32 %50)
  br label %52

52:                                               ; preds = %40, %28
  br label %93

53:                                               ; preds = %20
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %55 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %93

59:                                               ; preds = %53
  %60 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %61 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @WARN_ON(i32 %62)
  %64 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %65 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %64, i32 0, i32 4
  %66 = load %struct.intel_crtc*, %struct.intel_crtc** %65, align 8
  %67 = icmp ne %struct.intel_crtc* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ON(i32 %68)
  %70 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %71 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %72 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %73 = call i32 @intel_fbc_update_state_cache(%struct.intel_crtc* %70, %struct.intel_crtc_state* %71, %struct.intel_plane_state* %72)
  %74 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %75 = call i64 @intel_fbc_alloc_cfb(%struct.intel_crtc* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %59
  %78 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %79 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %78, i32 0, i32 2
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %79, align 8
  br label %93

80:                                               ; preds = %59
  %81 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %82 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pipe_name(i32 %83)
  %85 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %87 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %86, i32 0, i32 2
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8** %87, align 8
  %88 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %89 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %91 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %92 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %91, i32 0, i32 4
  store %struct.intel_crtc* %90, %struct.intel_crtc** %92, align 8
  br label %93

93:                                               ; preds = %80, %77, %58, %52
  %94 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %95 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %94, i32 0, i32 3
  %96 = call i32 @mutex_unlock(i32* %95)
  br label %97

97:                                               ; preds = %93, %19
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @fbc_supported(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_fbc_update_state_cache(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i64 @intel_fbc_alloc_cfb(%struct.intel_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
