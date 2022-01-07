; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_cancel_stop_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_cancel_stop_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@RING_MI_MODE = common dso_local global i32 0, align 4
@STOP_RING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_engine_cancel_stop_cs(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %3 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %4 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %8 = load i32, i32* @RING_MI_MODE, align 4
  %9 = load i32, i32* @STOP_RING, align 4
  %10 = call i32 @_MASKED_BIT_DISABLE(i32 %9)
  %11 = call i32 @ENGINE_WRITE_FW(%struct.intel_engine_cs* %7, i32 %8, i32 %10)
  ret void
}

declare dso_local i32 @GEM_TRACE(i8*, i32) #1

declare dso_local i32 @ENGINE_WRITE_FW(%struct.intel_engine_cs*, i32, i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
