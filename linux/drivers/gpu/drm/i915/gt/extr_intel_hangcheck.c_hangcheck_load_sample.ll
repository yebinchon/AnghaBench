; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_hangcheck.c_hangcheck_load_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_hangcheck.c_hangcheck_load_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32 }
%struct.hangcheck = type { i8*, i8*, i32 }

@RING_START = common dso_local global i32 0, align 4
@RING_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.hangcheck*)* @hangcheck_load_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hangcheck_load_sample(%struct.intel_engine_cs* %0, %struct.hangcheck* %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.hangcheck*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store %struct.hangcheck* %1, %struct.hangcheck** %4, align 8
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %6 = call i32 @intel_engine_get_active_head(%struct.intel_engine_cs* %5)
  %7 = load %struct.hangcheck*, %struct.hangcheck** %4, align 8
  %8 = getelementptr inbounds %struct.hangcheck, %struct.hangcheck* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 8
  %9 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %10 = load i32, i32* @RING_START, align 4
  %11 = call i8* @ENGINE_READ(%struct.intel_engine_cs* %9, i32 %10)
  %12 = load %struct.hangcheck*, %struct.hangcheck** %4, align 8
  %13 = getelementptr inbounds %struct.hangcheck, %struct.hangcheck* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %15 = load i32, i32* @RING_HEAD, align 4
  %16 = call i8* @ENGINE_READ(%struct.intel_engine_cs* %14, i32 %15)
  %17 = load %struct.hangcheck*, %struct.hangcheck** %4, align 8
  %18 = getelementptr inbounds %struct.hangcheck, %struct.hangcheck* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  ret void
}

declare dso_local i32 @intel_engine_get_active_head(%struct.intel_engine_cs*) #1

declare dso_local i8* @ENGINE_READ(%struct.intel_engine_cs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
