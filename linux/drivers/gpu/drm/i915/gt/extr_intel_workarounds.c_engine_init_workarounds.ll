; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_engine_init_workarounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_engine_init_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i64, i32 }
%struct.i915_wa_list = type { i32 }

@RENDER_CLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.i915_wa_list*)* @engine_init_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @engine_init_workarounds(%struct.intel_engine_cs* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %6 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @INTEL_GEN(i32 %7)
  %9 = icmp slt i32 %8, 8
  %10 = zext i1 %9 to i32
  %11 = call i64 @I915_SELFTEST_ONLY(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %16 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RENDER_CLASS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %22 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %23 = call i32 @rcs_engine_wa_init(%struct.intel_engine_cs* %21, %struct.i915_wa_list* %22)
  br label %28

24:                                               ; preds = %14
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %26 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %27 = call i32 @xcs_engine_wa_init(%struct.intel_engine_cs* %25, %struct.i915_wa_list* %26)
  br label %28

28:                                               ; preds = %13, %24, %20
  ret void
}

declare dso_local i64 @I915_SELFTEST_ONLY(i32) #1

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @rcs_engine_wa_init(%struct.intel_engine_cs*, %struct.i915_wa_list*) #1

declare dso_local i32 @xcs_engine_wa_init(%struct.intel_engine_cs*, %struct.i915_wa_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
