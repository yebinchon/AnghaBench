; ModuleID = '/home/carl/AnghaBench/linux/drivers/idle/extr_intel_idle.c_sklh_idle_state_table_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/idle/extr_intel_idle.c_sklh_idle_state_table_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@max_cstate = common dso_local global i32 0, align 4
@mwait_substates = common dso_local global i32 0, align 4
@MSR_PKG_CST_CONFIG_CONTROL = common dso_local global i32 0, align 4
@MSR_IA32_FEATURE_CONTROL = common dso_local global i32 0, align 4
@skl_cstates = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sklh_idle_state_table_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sklh_idle_state_table_update() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @max_cstate, align 4
  %7 = icmp sle i32 %6, 7
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %43

9:                                                ; preds = %0
  %10 = load i32, i32* @mwait_substates, align 4
  %11 = and i32 %10, -268435456
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %43

14:                                               ; preds = %9
  %15 = load i32, i32* @MSR_PKG_CST_CONFIG_CONTROL, align 4
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @rdmsrl(i32 %15, i64 %16)
  %18 = load i64, i64* %1, align 8
  %19 = and i64 %18, 15
  %20 = icmp ne i64 %19, 8
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %43

22:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  %23 = call i32 @cpuid(i32 7, i32* %2, i32* %3, i32* %4, i32* %5)
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32, i32* @MSR_IA32_FEATURE_CONTROL, align 4
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @rdmsrl(i32 %28, i64 %29)
  %31 = load i64, i64* %1, align 8
  %32 = and i64 %31, 262144
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %43

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %22
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @skl_cstates, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 5
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @skl_cstates, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 6
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %34, %21, %13, %8
  ret void
}

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i32 @cpuid(i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
