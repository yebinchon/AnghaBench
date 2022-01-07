; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_hangcheck.c_hangcheck_accumulate_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_hangcheck.c_hangcheck_accumulate_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.hangcheck = type { i32, i8*, i8*, i32 }

@I915_ENGINE_DEAD_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@I915_SEQNO_DEAD_TIMEOUT = common dso_local global i64 0, align 8
@I915_ENGINE_WEDGED_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.hangcheck*)* @hangcheck_accumulate_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hangcheck_accumulate_sample(%struct.intel_engine_cs* %0, %struct.hangcheck* %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.hangcheck*, align 8
  %5 = alloca i64, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store %struct.hangcheck* %1, %struct.hangcheck** %4, align 8
  %6 = load i64, i64* @I915_ENGINE_DEAD_TIMEOUT, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %8 = load %struct.hangcheck*, %struct.hangcheck** %4, align 8
  %9 = call i32 @hangcheck_get_action(%struct.intel_engine_cs* %7, %struct.hangcheck* %8)
  %10 = load %struct.hangcheck*, %struct.hangcheck** %4, align 8
  %11 = getelementptr inbounds %struct.hangcheck, %struct.hangcheck* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.hangcheck*, %struct.hangcheck** %4, align 8
  %13 = getelementptr inbounds %struct.hangcheck, %struct.hangcheck* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %30 [
    i32 130, label %15
    i32 133, label %15
    i32 128, label %22
    i32 129, label %22
    i32 134, label %27
    i32 132, label %27
    i32 131, label %29
  ]

15:                                               ; preds = %2, %2
  %16 = load %struct.hangcheck*, %struct.hangcheck** %4, align 8
  %17 = getelementptr inbounds %struct.hangcheck, %struct.hangcheck* %16, i32 0, i32 3
  store i32 0, i32* %17, align 8
  %18 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %19 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @memset(i32* %20, i32 0, i32 4)
  br label %22

22:                                               ; preds = %2, %2, %15
  %23 = load i64, i64* @jiffies, align 8
  %24 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %25 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  br label %35

27:                                               ; preds = %2, %2
  %28 = load i64, i64* @I915_SEQNO_DEAD_TIMEOUT, align 8
  store i64 %28, i64* %5, align 8
  br label %35

29:                                               ; preds = %2
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.hangcheck*, %struct.hangcheck** %4, align 8
  %32 = getelementptr inbounds %struct.hangcheck, %struct.hangcheck* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @MISSING_CASE(i32 %33)
  br label %35

35:                                               ; preds = %30, %29, %27, %22
  %36 = load i64, i64* @jiffies, align 8
  %37 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %38 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %40, %41
  %43 = call i8* @time_after(i64 %36, i64 %42)
  %44 = load %struct.hangcheck*, %struct.hangcheck** %4, align 8
  %45 = getelementptr inbounds %struct.hangcheck, %struct.hangcheck* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i64, i64* @jiffies, align 8
  %47 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %48 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @I915_ENGINE_WEDGED_TIMEOUT, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i8* @time_after(i64 %46, i64 %52)
  %54 = load %struct.hangcheck*, %struct.hangcheck** %4, align 8
  %55 = getelementptr inbounds %struct.hangcheck, %struct.hangcheck* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  ret void
}

declare dso_local i32 @hangcheck_get_action(%struct.intel_engine_cs*, %struct.hangcheck*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i8* @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
