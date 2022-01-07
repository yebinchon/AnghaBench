; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_write_sdvox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_write_sdvox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32 }

@PORT_B = common dso_local global i64 0, align 8
@GEN3_SDVOC = common dso_local global i32 0, align 4
@GEN3_SDVOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_sdvo*, i32)* @intel_sdvo_write_sdvox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_write_sdvox(%struct.intel_sdvo* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_sdvo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %11 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %6, align 8
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %20 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %2
  %23 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %24 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @I915_WRITE(i32 %25, i32 %26)
  %28 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %29 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @POSTING_READ(i32 %30)
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %33 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %22
  %36 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %37 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @I915_WRITE(i32 %38, i32 %39)
  %41 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %42 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @POSTING_READ(i32 %43)
  br label %45

45:                                               ; preds = %35, %22
  br label %76

46:                                               ; preds = %2
  %47 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %48 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PORT_B, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @GEN3_SDVOC, align 4
  %54 = call i32 @I915_READ(i32 %53)
  store i32 %54, i32* %8, align 4
  br label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @GEN3_SDVOB, align 4
  %57 = call i32 @I915_READ(i32 %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %52
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load i32, i32* @GEN3_SDVOB, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @I915_WRITE(i32 %63, i32 %64)
  %66 = load i32, i32* @GEN3_SDVOB, align 4
  %67 = call i32 @POSTING_READ(i32 %66)
  %68 = load i32, i32* @GEN3_SDVOC, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @I915_WRITE(i32 %68, i32 %69)
  %71 = load i32, i32* @GEN3_SDVOC, align 4
  %72 = call i32 @POSTING_READ(i32 %71)
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %59

76:                                               ; preds = %45, %59
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
