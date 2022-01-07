; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_hangcheck.c_hangcheck_get_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_hangcheck.c_hangcheck_get_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.hangcheck = type { i64, i64, i32 }

@ENGINE_IDLE = common dso_local global i32 0, align 4
@ENGINE_ACTIVE_SEQNO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*, %struct.hangcheck*)* @hangcheck_get_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hangcheck_get_action(%struct.intel_engine_cs* %0, %struct.hangcheck* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.hangcheck*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %4, align 8
  store %struct.hangcheck* %1, %struct.hangcheck** %5, align 8
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %7 = call i64 @intel_engine_is_idle(%struct.intel_engine_cs* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @ENGINE_IDLE, align 4
  store i32 %10, i32* %3, align 4
  br label %39

11:                                               ; preds = %2
  %12 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %13 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.hangcheck*, %struct.hangcheck** %5, align 8
  %17 = getelementptr inbounds %struct.hangcheck, %struct.hangcheck* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* @ENGINE_ACTIVE_SEQNO, align 4
  store i32 %21, i32* %3, align 4
  br label %39

22:                                               ; preds = %11
  %23 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %24 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.hangcheck*, %struct.hangcheck** %5, align 8
  %28 = getelementptr inbounds %struct.hangcheck, %struct.hangcheck* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @ENGINE_ACTIVE_SEQNO, align 4
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %22
  %34 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %35 = load %struct.hangcheck*, %struct.hangcheck** %5, align 8
  %36 = getelementptr inbounds %struct.hangcheck, %struct.hangcheck* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @engine_stuck(%struct.intel_engine_cs* %34, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %31, %20, %9
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @intel_engine_is_idle(%struct.intel_engine_cs*) #1

declare dso_local i32 @engine_stuck(%struct.intel_engine_cs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
