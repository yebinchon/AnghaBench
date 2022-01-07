; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pmu_state = common dso_local global i64 0, align 8
@uninitialized = common dso_local global i64 0, align 8
@pmu_suspended = common dso_local global i32 0, align 4
@pmu_lock = common dso_local global i32 0, align 4
@adb_int_pending = common dso_local global i32 0, align 4
@gpio_irq = common dso_local global i64 0, align 8
@via1 = common dso_local global i32* null, align 8
@IER = common dso_local global i64 0, align 8
@CB1_INT = common dso_local global i32 0, align 4
@IER_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmu_resume() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @pmu_state, align 8
  %3 = load i64, i64* @uninitialized, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @pmu_suspended, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %0
  br label %36

9:                                                ; preds = %5
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @pmu_lock, i64 %10)
  %12 = load i32, i32* @pmu_suspended, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* @pmu_suspended, align 4
  %14 = load i32, i32* @pmu_suspended, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* @pmu_lock, i64 %17)
  br label %36

19:                                               ; preds = %9
  store i32 1, i32* @adb_int_pending, align 4
  %20 = load i64, i64* @gpio_irq, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* @gpio_irq, align 8
  %24 = call i32 @enable_irq(i64 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32*, i32** @via1, align 8
  %27 = load i64, i64* @IER, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* @CB1_INT, align 4
  %30 = load i32, i32* @IER_SET, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @out_8(i32* %28, i32 %31)
  %33 = load i64, i64* %1, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* @pmu_lock, i64 %33)
  %35 = call i32 (...) @pmu_poll()
  br label %36

36:                                               ; preds = %25, %16, %8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @enable_irq(i64) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @pmu_poll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
