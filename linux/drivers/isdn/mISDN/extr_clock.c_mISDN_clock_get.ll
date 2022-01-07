; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_clock.c_mISDN_clock_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_clock.c_mISDN_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iclock_lock = common dso_local global i32 0, align 4
@iclock_timestamp = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@iclock_count = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @mISDN_clock_get() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @read_lock_irqsave(i32* @iclock_lock, i32 %5)
  %7 = call i32 (...) @ktime_get()
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @iclock_timestamp, align 4
  %10 = call i32 @ktime_sub(i32 %8, i32 %9)
  %11 = load i32, i32* @NSEC_PER_SEC, align 4
  %12 = sdiv i32 %11, 8000
  %13 = call zeroext i16 @ktime_divns(i32 %10, i32 %12)
  store i16 %13, i16* %3, align 2
  %14 = load i16, i16* @iclock_count, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* %3, align 2
  %17 = zext i16 %16 to i32
  %18 = add nsw i32 %15, %17
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %4, align 2
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @read_unlock_irqrestore(i32* @iclock_lock, i32 %20)
  %22 = load i16, i16* %4, align 2
  ret i16 %22
}

declare dso_local i32 @read_lock_irqsave(i32*, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local zeroext i16 @ktime_divns(i32, i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
