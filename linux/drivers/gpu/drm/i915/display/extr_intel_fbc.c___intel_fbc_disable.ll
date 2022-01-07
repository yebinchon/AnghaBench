; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c___intel_fbc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c___intel_fbc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_fbc }
%struct.intel_fbc = type { i32, i32, %struct.intel_crtc*, i32 }
%struct.intel_crtc = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Disabling FBC on pipe %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @__intel_fbc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__intel_fbc_disable(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_fbc*, align 8
  %4 = alloca %struct.intel_crtc*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  store %struct.intel_fbc* %6, %struct.intel_fbc** %3, align 8
  %7 = load %struct.intel_fbc*, %struct.intel_fbc** %3, align 8
  %8 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %7, i32 0, i32 2
  %9 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  store %struct.intel_crtc* %9, %struct.intel_crtc** %4, align 8
  %10 = load %struct.intel_fbc*, %struct.intel_fbc** %3, align 8
  %11 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %10, i32 0, i32 3
  %12 = call i32 @mutex_is_locked(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.intel_fbc*, %struct.intel_fbc** %3, align 8
  %18 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.intel_fbc*, %struct.intel_fbc** %3, align 8
  %25 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pipe_name(i32 %30)
  %32 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %34 = call i32 @__intel_fbc_cleanup_cfb(%struct.drm_i915_private* %33)
  %35 = load %struct.intel_fbc*, %struct.intel_fbc** %3, align 8
  %36 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.intel_fbc*, %struct.intel_fbc** %3, align 8
  %38 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %37, i32 0, i32 2
  store %struct.intel_crtc* null, %struct.intel_crtc** %38, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @__intel_fbc_cleanup_cfb(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
