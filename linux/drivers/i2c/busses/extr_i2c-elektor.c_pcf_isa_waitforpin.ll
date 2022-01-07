; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-elektor.c_pcf_isa_waitforpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-elektor.c_pcf_isa_waitforpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wait = common dso_local global i32 0, align 4
@irq = common dso_local global i64 0, align 8
@lock = common dso_local global i32 0, align 4
@pcf_pending = common dso_local global i32 0, align 4
@pcf_wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pcf_isa_waitforpin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcf_isa_waitforpin(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = call i32 @DEFINE_WAIT(i32 %5)
  store i32 2, i32* %3, align 4
  %7 = load i64, i64* @irq, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @lock, i64 %10)
  %12 = load i32, i32* @pcf_pending, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* @lock, i64 %15)
  %17 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %18 = call i32 @prepare_to_wait(i32* @pcf_wait, i32* @wait, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @HZ, align 4
  %21 = mul nsw i32 %19, %20
  %22 = call i64 @schedule_timeout(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %14
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @lock, i64 %25)
  %27 = load i32, i32* @pcf_pending, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* @pcf_pending, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @lock, i64 %31)
  br label %33

33:                                               ; preds = %30, %14
  %34 = call i32 @finish_wait(i32* @pcf_wait, i32* @wait)
  br label %38

35:                                               ; preds = %9
  store i32 0, i32* @pcf_pending, align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* @lock, i64 %36)
  br label %38

38:                                               ; preds = %35, %33
  br label %41

39:                                               ; preds = %1
  %40 = call i32 @udelay(i32 100)
  br label %41

41:                                               ; preds = %39, %38
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @schedule_timeout(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
