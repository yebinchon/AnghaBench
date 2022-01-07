; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_intel_overlay_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_intel_overlay_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_overlay*, %struct.TYPE_2__** }
%struct.intel_overlay = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_i915_private* }
%struct.TYPE_2__ = type { i32 }

@RCS0 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@intel_overlay_last_flip_retire = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Initialized overlay support.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_overlay_setup(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_overlay*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = call i32 @HAS_OVERLAY(%struct.drm_i915_private* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %85

9:                                                ; preds = %1
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = load i64, i64* @RCS0, align 8
  %12 = call i32 @HAS_ENGINE(%struct.drm_i915_private* %10, i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %85

15:                                               ; preds = %9
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.intel_overlay* @kzalloc(i32 40, i32 %16)
  store %struct.intel_overlay* %17, %struct.intel_overlay** %3, align 8
  %18 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %19 = icmp ne %struct.intel_overlay* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %85

21:                                               ; preds = %15
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %24 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %23, i32 0, i32 8
  store %struct.drm_i915_private* %22, %struct.drm_i915_private** %24, align 8
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %26, align 8
  %28 = load i64, i64* @RCS0, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %34 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %36 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @GEM_BUG_ON(i32 %40)
  %42 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %43 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %42, i32 0, i32 0
  store i32 66046, i32* %43, align 8
  %44 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %45 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %47 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %46, i32 0, i32 2
  store i32 -19, i32* %47, align 8
  %48 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %49 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %48, i32 0, i32 3
  store i32 75, i32* %49, align 4
  %50 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %51 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %50, i32 0, i32 4
  store i32 146, i32* %51, align 8
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %53 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %54 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %53, i32 0, i32 6
  %55 = load i32, i32* @intel_overlay_last_flip_retire, align 4
  %56 = call i32 @i915_active_init(%struct.drm_i915_private* %52, i32* %54, i32* null, i32 %55)
  %57 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %59 = call i32 @OVERLAY_NEEDS_PHYSICAL(%struct.drm_i915_private* %58)
  %60 = call i32 @get_registers(%struct.intel_overlay* %57, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %21
  br label %82

64:                                               ; preds = %21
  %65 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %66 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memset_io(i32 %67, i32 0, i32 4)
  %69 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %70 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @update_polyphase_filter(i32 %71)
  %73 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %74 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %75 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @update_reg_attrs(%struct.intel_overlay* %73, i32 %76)
  %78 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %80 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %79, i32 0, i32 0
  store %struct.intel_overlay* %78, %struct.intel_overlay** %80, align 8
  %81 = call i32 @DRM_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %85

82:                                               ; preds = %63
  %83 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %84 = call i32 @kfree(%struct.intel_overlay* %83)
  br label %85

85:                                               ; preds = %82, %64, %20, %14, %8
  ret void
}

declare dso_local i32 @HAS_OVERLAY(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_ENGINE(%struct.drm_i915_private*, i64) #1

declare dso_local %struct.intel_overlay* @kzalloc(i32, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_active_init(%struct.drm_i915_private*, i32*, i32*, i32) #1

declare dso_local i32 @get_registers(%struct.intel_overlay*, i32) #1

declare dso_local i32 @OVERLAY_NEEDS_PHYSICAL(%struct.drm_i915_private*) #1

declare dso_local i32 @memset_io(i32, i32, i32) #1

declare dso_local i32 @update_polyphase_filter(i32) #1

declare dso_local i32 @update_reg_attrs(%struct.intel_overlay*, i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @kfree(%struct.intel_overlay*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
