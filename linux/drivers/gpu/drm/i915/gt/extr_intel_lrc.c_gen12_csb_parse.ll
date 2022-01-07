; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen12_csb_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen12_csb_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_execlists = type { i64* }

@GEN12_CTX_STATUS_SWITCHED_TO_NEW_QUEUE = common dso_local global i32 0, align 4
@CSB_PROMOTE = common dso_local global i32 0, align 4
@CSB_PREEMPT = common dso_local global i32 0, align 4
@CSB_COMPLETE = common dso_local global i32 0, align 4
@CSB_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_execlists*, i32*)* @gen12_csb_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen12_csb_parse(%struct.intel_engine_execlists* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_engine_execlists*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_engine_execlists* %0, %struct.intel_engine_execlists** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @GEN12_CSB_CTX_VALID(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @GEN12_CSB_CTX_VALID(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @GEN12_CTX_STATUS_SWITCHED_TO_NEW_QUEUE, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @CSB_PROMOTE, align 4
  store i32 %30, i32* %3, align 4
  br label %57

31:                                               ; preds = %26, %2
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @CSB_PREEMPT, align 4
  store i32 %38, i32* %3, align 4
  br label %57

39:                                               ; preds = %34, %31
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @GEN12_CTX_SWITCH_DETAIL(i32 %40)
  %42 = call i32 @GEM_BUG_ON(i32 %41)
  %43 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %44 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @GEM_BUG_ON(i32 %52)
  %54 = load i32, i32* @CSB_COMPLETE, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %39
  %56 = load i32, i32* @CSB_NOP, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %48, %37, %29
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @GEN12_CSB_CTX_VALID(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @GEN12_CTX_SWITCH_DETAIL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
