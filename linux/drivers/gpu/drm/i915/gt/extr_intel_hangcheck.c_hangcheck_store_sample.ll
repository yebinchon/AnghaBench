; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_hangcheck.c_hangcheck_store_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_hangcheck.c_hangcheck_store_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hangcheck = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.hangcheck*)* @hangcheck_store_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hangcheck_store_sample(%struct.intel_engine_cs* %0, %struct.hangcheck* %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.hangcheck*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store %struct.hangcheck* %1, %struct.hangcheck** %4, align 8
  %5 = load %struct.hangcheck*, %struct.hangcheck** %4, align 8
  %6 = getelementptr inbounds %struct.hangcheck, %struct.hangcheck* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %9 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 4
  %11 = load %struct.hangcheck*, %struct.hangcheck** %4, align 8
  %12 = getelementptr inbounds %struct.hangcheck, %struct.hangcheck* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %15 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.hangcheck*, %struct.hangcheck** %4, align 8
  %18 = getelementptr inbounds %struct.hangcheck, %struct.hangcheck* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %21 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
