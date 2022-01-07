; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_gen6_bsd_submit_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_gen6_bsd_submit_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }

@FORCEWAKE_ALL = common dso_local global i32 0, align 4
@GEN6_BSD_SLEEP_PSMI_CONTROL = common dso_local global i32 0, align 4
@GEN6_BSD_SLEEP_MSG_DISABLE = common dso_local global i32 0, align 4
@GEN6_BSD_RNCID = common dso_local global i32 0, align 4
@GEN6_BSD_SLEEP_INDICATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"timed out waiting for the BSD ring to wake up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_request*)* @gen6_bsd_submit_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen6_bsd_submit_request(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  %4 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %5 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  store %struct.intel_uncore* %8, %struct.intel_uncore** %3, align 8
  %9 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %10 = load i32, i32* @FORCEWAKE_ALL, align 4
  %11 = call i32 @intel_uncore_forcewake_get(%struct.intel_uncore* %9, i32 %10)
  %12 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %13 = load i32, i32* @GEN6_BSD_SLEEP_PSMI_CONTROL, align 4
  %14 = load i32, i32* @GEN6_BSD_SLEEP_MSG_DISABLE, align 4
  %15 = call i32 @_MASKED_BIT_ENABLE(i32 %14)
  %16 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %12, i32 %13, i32 %15)
  %17 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %18 = load i32, i32* @GEN6_BSD_RNCID, align 4
  %19 = call i32 @intel_uncore_write64_fw(%struct.intel_uncore* %17, i32 %18, i32 0)
  %20 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %21 = load i32, i32* @GEN6_BSD_SLEEP_PSMI_CONTROL, align 4
  %22 = load i32, i32* @GEN6_BSD_SLEEP_INDICATOR, align 4
  %23 = call i64 @__intel_wait_for_register_fw(%struct.intel_uncore* %20, i32 %21, i32 %22, i32 0, i32 1000, i32 0, i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %1
  %28 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %29 = call i32 @i9xx_submit_request(%struct.i915_request* %28)
  %30 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %31 = load i32, i32* @GEN6_BSD_SLEEP_PSMI_CONTROL, align 4
  %32 = load i32, i32* @GEN6_BSD_SLEEP_MSG_DISABLE, align 4
  %33 = call i32 @_MASKED_BIT_DISABLE(i32 %32)
  %34 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %30, i32 %31, i32 %33)
  %35 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %36 = load i32, i32* @FORCEWAKE_ALL, align 4
  %37 = call i32 @intel_uncore_forcewake_put(%struct.intel_uncore* %35, i32 %36)
  ret void
}

declare dso_local i32 @intel_uncore_forcewake_get(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_uncore_write_fw(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @intel_uncore_write64_fw(%struct.intel_uncore*, i32, i32) #1

declare dso_local i64 @__intel_wait_for_register_fw(%struct.intel_uncore*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @i9xx_submit_request(%struct.i915_request*) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

declare dso_local i32 @intel_uncore_forcewake_put(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
