; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_intel_gt_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_intel_gt_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.intel_gt = type { %struct.TYPE_15__, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"flags=%lx\0A\00", align 1
@I915_RESET_BACKOFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Resetting chip for %s\0A\00", align 1
@i915_modparams = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"GPU reset not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"GPU reset disabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Failed to reset chip\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Failed to initialise HW following reset (%d)\0A\00", align 1
@TAINT_WARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_gt_reset(%struct.intel_gt* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %10 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 (...) @might_sleep()
  %15 = load i32, i32* @I915_RESET_BACKOFF, align 4
  %16 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %17 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = call i32 @test_bit(i32 %15, i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @GEM_BUG_ON(i32 %22)
  %24 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %25 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %29 = call i32 @__intel_gt_unset_wedged(%struct.intel_gt* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  br label %138

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %37 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %36, i32 0, i32 1
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @dev_notice(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %35, %32
  %45 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %46 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %45, i32 0, i32 1
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = call i32 @atomic_inc(i32* %49)
  %51 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %52 = call i32 @reset_prepare(%struct.intel_gt* %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %54 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %53, i32 0, i32 1
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = call i32 @intel_has_gpu_reset(%struct.TYPE_16__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %44
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @i915_modparams, i32 0, i32 0), align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %63 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %62, i32 0, i32 1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %71

69:                                               ; preds = %58
  %70 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %61
  br label %146

72:                                               ; preds = %44
  %73 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %74 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %73, i32 0, i32 1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = call %struct.TYPE_12__* @INTEL_INFO(%struct.TYPE_16__* %75)
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %82 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %81, i32 0, i32 1
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = call i32 @intel_runtime_pm_disable_interrupts(%struct.TYPE_16__* %83)
  br label %85

85:                                               ; preds = %80, %72
  %86 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @do_reset(%struct.intel_gt* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %92 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %91, i32 0, i32 1
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %143

98:                                               ; preds = %85
  %99 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %100 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %99, i32 0, i32 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = call %struct.TYPE_12__* @INTEL_INFO(%struct.TYPE_16__* %101)
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %108 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %107, i32 0, i32 1
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = call i32 @intel_runtime_pm_enable_interrupts(%struct.TYPE_16__* %109)
  br label %111

111:                                              ; preds = %106, %98
  %112 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %113 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %112, i32 0, i32 1
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = call i32 @intel_overlay_reset(%struct.TYPE_16__* %114)
  %116 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %117 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %116, i32 0, i32 1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = call i32 @i915_gem_init_hw(%struct.TYPE_16__* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %111
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  br label %143

125:                                              ; preds = %111
  %126 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %127 = call i32 @resume(%struct.intel_gt* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %143

131:                                              ; preds = %125
  %132 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %133 = call i32 @intel_gt_queue_hangcheck(%struct.intel_gt* %132)
  br label %134

134:                                              ; preds = %146, %131
  %135 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @reset_finish(%struct.intel_gt* %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %31
  %139 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %140 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = call i32 @mutex_unlock(i32* %141)
  ret void

143:                                              ; preds = %130, %122, %90
  %144 = load i32, i32* @TAINT_WARN, align 4
  %145 = call i32 @add_taint_for_CI(i32 %144)
  br label %146

146:                                              ; preds = %143, %71
  %147 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %148 = call i32 @__intel_gt_set_wedged(%struct.intel_gt* %147)
  br label %134
}

declare dso_local i32 @GEM_TRACE(i8*, i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__intel_gt_unset_wedged(%struct.intel_gt*) #1

declare dso_local i32 @dev_notice(i32, i8*, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @reset_prepare(%struct.intel_gt*) #1

declare dso_local i32 @intel_has_gpu_reset(%struct.TYPE_16__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local %struct.TYPE_12__* @INTEL_INFO(%struct.TYPE_16__*) #1

declare dso_local i32 @intel_runtime_pm_disable_interrupts(%struct.TYPE_16__*) #1

declare dso_local i64 @do_reset(%struct.intel_gt*, i32) #1

declare dso_local i32 @intel_runtime_pm_enable_interrupts(%struct.TYPE_16__*) #1

declare dso_local i32 @intel_overlay_reset(%struct.TYPE_16__*) #1

declare dso_local i32 @i915_gem_init_hw(%struct.TYPE_16__*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @resume(%struct.intel_gt*) #1

declare dso_local i32 @intel_gt_queue_hangcheck(%struct.intel_gt*) #1

declare dso_local i32 @reset_finish(%struct.intel_gt*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @add_taint_for_CI(i32) #1

declare dso_local i32 @__intel_gt_set_wedged(%struct.intel_gt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
