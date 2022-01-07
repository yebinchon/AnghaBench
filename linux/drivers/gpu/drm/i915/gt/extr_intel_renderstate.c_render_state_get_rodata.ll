; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_renderstate.c_render_state_get_rodata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_renderstate.c_render_state_get_rodata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_renderstate_rodata = type { i32 }
%struct.intel_engine_cs = type { i64, i32 }

@RENDER_CLASS = common dso_local global i64 0, align 8
@gen6_null_state = common dso_local global %struct.intel_renderstate_rodata zeroinitializer, align 4
@gen7_null_state = common dso_local global %struct.intel_renderstate_rodata zeroinitializer, align 4
@gen8_null_state = common dso_local global %struct.intel_renderstate_rodata zeroinitializer, align 4
@gen9_null_state = common dso_local global %struct.intel_renderstate_rodata zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_renderstate_rodata* (%struct.intel_engine_cs*)* @render_state_get_rodata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_renderstate_rodata* @render_state_get_rodata(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_renderstate_rodata*, align 8
  %3 = alloca %struct.intel_engine_cs*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @RENDER_CLASS, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.intel_renderstate_rodata* null, %struct.intel_renderstate_rodata** %2, align 8
  br label %20

10:                                               ; preds = %1
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %12 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @INTEL_GEN(i32 %13)
  switch i32 %14, label %19 [
    i32 6, label %15
    i32 7, label %16
    i32 8, label %17
    i32 9, label %18
  ]

15:                                               ; preds = %10
  store %struct.intel_renderstate_rodata* @gen6_null_state, %struct.intel_renderstate_rodata** %2, align 8
  br label %20

16:                                               ; preds = %10
  store %struct.intel_renderstate_rodata* @gen7_null_state, %struct.intel_renderstate_rodata** %2, align 8
  br label %20

17:                                               ; preds = %10
  store %struct.intel_renderstate_rodata* @gen8_null_state, %struct.intel_renderstate_rodata** %2, align 8
  br label %20

18:                                               ; preds = %10
  store %struct.intel_renderstate_rodata* @gen9_null_state, %struct.intel_renderstate_rodata** %2, align 8
  br label %20

19:                                               ; preds = %10
  store %struct.intel_renderstate_rodata* null, %struct.intel_renderstate_rodata** %2, align 8
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %15, %9
  %21 = load %struct.intel_renderstate_rodata*, %struct.intel_renderstate_rodata** %2, align 8
  ret %struct.intel_renderstate_rodata* %21
}

declare dso_local i32 @INTEL_GEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
