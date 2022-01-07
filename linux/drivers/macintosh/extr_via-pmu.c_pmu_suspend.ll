; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pmu_state = common dso_local global i64 0, align 8
@uninitialized = common dso_local global i64 0, align 8
@pmu_lock = common dso_local global i32 0, align 4
@pmu_suspended = common dso_local global i32 0, align 4
@req_awaiting_reply = common dso_local global i64 0, align 8
@adb_int_pending = common dso_local global i32 0, align 4
@idle = common dso_local global i64 0, align 8
@gpio_irq = common dso_local global i64 0, align 8
@via1 = common dso_local global i32* null, align 8
@IER = common dso_local global i64 0, align 8
@CB1_INT = common dso_local global i32 0, align 4
@IER_CLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmu_suspend() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @pmu_state, align 8
  %3 = load i64, i64* @uninitialized, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %54

6:                                                ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @pmu_lock, i64 %7)
  %9 = load i32, i32* @pmu_suspended, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @pmu_suspended, align 4
  %11 = load i32, i32* @pmu_suspended, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @spin_unlock_irqrestore(i32* @pmu_lock, i64 %14)
  br label %54

16:                                               ; preds = %6
  br label %17

17:                                               ; preds = %53, %16
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* @pmu_lock, i64 %18)
  %20 = load i64, i64* @req_awaiting_reply, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* @adb_int_pending, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = call i32 @via_pmu_interrupt(i32 0, i32* null)
  %25 = load i64, i64* %1, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @pmu_lock, i64 %25)
  %27 = load i32, i32* @adb_int_pending, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* @pmu_state, align 8
  %31 = load i64, i64* @idle, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load i64, i64* @req_awaiting_reply, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @gpio_irq, align 8
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* @gpio_irq, align 8
  %41 = call i32 @disable_irq_nosync(i64 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32*, i32** @via1, align 8
  %44 = load i64, i64* @IER, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* @CB1_INT, align 4
  %47 = load i32, i32* @IER_CLR, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @out_8(i32* %45, i32 %48)
  %50 = load i64, i64* %1, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* @pmu_lock, i64 %50)
  br label %54

52:                                               ; preds = %33, %29, %23
  br label %53

53:                                               ; preds = %52
  br i1 true, label %17, label %54

54:                                               ; preds = %5, %13, %53, %42
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @via_pmu_interrupt(i32, i32*) #1

declare dso_local i32 @disable_irq_nosync(i64) #1

declare dso_local i32 @out_8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
