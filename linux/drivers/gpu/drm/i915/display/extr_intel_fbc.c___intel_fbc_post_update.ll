; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c___intel_fbc_post_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c___intel_fbc_post_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { %struct.intel_fbc }
%struct.intel_fbc = type { i32, i32, i32, i32, %struct.intel_crtc*, i32, i32 }

@i915_modparams = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [37 x i8] c"disabled at runtime per module param\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"FBC enabled (active or scheduled)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"frontbuffer write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*)* @__intel_fbc_post_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__intel_fbc_post_update(%struct.intel_crtc* %0) #0 {
  %2 = alloca %struct.intel_crtc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_fbc*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %2, align 8
  %5 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.drm_i915_private* @to_i915(i32 %8)
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %3, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 0
  store %struct.intel_fbc* %11, %struct.intel_fbc** %4, align 8
  %12 = load %struct.intel_fbc*, %struct.intel_fbc** %4, align 8
  %13 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %12, i32 0, i32 6
  %14 = call i32 @mutex_is_locked(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.intel_fbc*, %struct.intel_fbc** %4, align 8
  %20 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.intel_fbc*, %struct.intel_fbc** %4, align 8
  %25 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %24, i32 0, i32 4
  %26 = load %struct.intel_crtc*, %struct.intel_crtc** %25, align 8
  %27 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %28 = icmp ne %struct.intel_crtc* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %1
  br label %66

30:                                               ; preds = %23
  %31 = load %struct.intel_fbc*, %struct.intel_fbc** %4, align 8
  %32 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.intel_fbc*, %struct.intel_fbc** %4, align 8
  %34 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i915_modparams, i32 0, i32 0), align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %30
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %41 = call i32 @intel_fbc_deactivate(%struct.drm_i915_private* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %43 = call i32 @__intel_fbc_disable(%struct.drm_i915_private* %42)
  br label %66

44:                                               ; preds = %30
  %45 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %46 = load %struct.intel_fbc*, %struct.intel_fbc** %4, align 8
  %47 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %46, i32 0, i32 3
  %48 = call i32 @intel_fbc_get_reg_params(%struct.intel_crtc* %45, i32* %47)
  %49 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %50 = call i32 @intel_fbc_can_activate(%struct.intel_crtc* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %66

53:                                               ; preds = %44
  %54 = load %struct.intel_fbc*, %struct.intel_fbc** %4, align 8
  %55 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %60 = call i32 @intel_fbc_deactivate(%struct.drm_i915_private* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %62 = call i32 @intel_fbc_hw_activate(%struct.drm_i915_private* %61)
  br label %66

63:                                               ; preds = %53
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %65 = call i32 @intel_fbc_deactivate(%struct.drm_i915_private* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %29, %39, %52, %63, %58
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @intel_fbc_deactivate(%struct.drm_i915_private*, i8*) #1

declare dso_local i32 @__intel_fbc_disable(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_fbc_get_reg_params(%struct.intel_crtc*, i32*) #1

declare dso_local i32 @intel_fbc_can_activate(%struct.intel_crtc*) #1

declare dso_local i32 @intel_fbc_hw_activate(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
