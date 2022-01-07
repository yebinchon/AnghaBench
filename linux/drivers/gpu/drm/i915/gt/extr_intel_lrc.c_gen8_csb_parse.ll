; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen8_csb_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen8_csb_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_execlists = type { i64* }

@GEN8_CTX_STATUS_IDLE_ACTIVE = common dso_local global i32 0, align 4
@CSB_PROMOTE = common dso_local global i32 0, align 4
@GEN8_CTX_STATUS_PREEMPTED = common dso_local global i32 0, align 4
@CSB_PREEMPT = common dso_local global i32 0, align 4
@CSB_COMPLETE = common dso_local global i32 0, align 4
@CSB_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_execlists*, i32*)* @gen8_csb_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen8_csb_parse(%struct.intel_engine_execlists* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_engine_execlists*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_engine_execlists* %0, %struct.intel_engine_execlists** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @GEN8_CTX_STATUS_IDLE_ACTIVE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @CSB_PROMOTE, align 4
  store i32 %14, i32* %3, align 4
  br label %32

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @GEN8_CTX_STATUS_PREEMPTED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @CSB_PREEMPT, align 4
  store i32 %21, i32* %3, align 4
  br label %32

22:                                               ; preds = %15
  %23 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %24 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @CSB_COMPLETE, align 4
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @CSB_NOP, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %28, %20, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
