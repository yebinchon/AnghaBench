; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crt = type { i32, i32 }

@ADPA_CRT_HOTPLUG_MASK = common dso_local global i32 0, align 4
@ADPA_HOTPLUG_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"crt adpa set to 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_crt_reset(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_crt*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.drm_i915_private* @to_i915(i32 %8)
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %3, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %11 = call i32 @to_intel_encoder(%struct.drm_encoder* %10)
  %12 = call %struct.intel_crt* @intel_encoder_to_crt(i32 %11)
  store %struct.intel_crt* %12, %struct.intel_crt** %4, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = call i32 @INTEL_GEN(%struct.drm_i915_private* %13)
  %15 = icmp sge i32 %14, 5
  br i1 %15, label %16, label %41

16:                                               ; preds = %1
  %17 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %18 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @I915_READ(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @ADPA_CRT_HOTPLUG_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @ADPA_HOTPLUG_BITS, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %29 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @I915_WRITE(i32 %30, i32 %31)
  %33 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %34 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @POSTING_READ(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %40 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crt* @intel_encoder_to_crt(i32) #1

declare dso_local i32 @to_intel_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
