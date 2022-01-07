; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mk712.c_mk712_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mk712.c_mk712_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mk712_interrupt.debounce = internal global i32 1, align 4
@mk712_interrupt.last_x = internal global i16 0, align 2
@mk712_interrupt.last_y = internal global i16 0, align 2
@mk712_lock = common dso_local global i32 0, align 4
@mk712_io = common dso_local global i64 0, align 8
@MK712_STATUS = common dso_local global i64 0, align 8
@MK712_CONVERSION_COMPLETE = common dso_local global i8 0, align 1
@MK712_STATUS_TOUCH = common dso_local global i8 0, align 1
@mk712_dev = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@MK712_X = common dso_local global i64 0, align 8
@MK712_Y = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mk712_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mk712_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = call i32 @spin_lock(i32* @mk712_lock)
  %7 = load i64, i64* @mk712_io, align 8
  %8 = load i64, i64* @MK712_STATUS, align 8
  %9 = add nsw i64 %7, %8
  %10 = call zeroext i8 @inb(i64 %9)
  store i8 %10, i8* %5, align 1
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = xor i32 %12, -1
  %14 = load i8, i8* @MK712_CONVERSION_COMPLETE, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* @mk712_interrupt.debounce, align 4
  br label %47

19:                                               ; preds = %2
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = xor i32 %21, -1
  %23 = load i8, i8* @MK712_STATUS_TOUCH, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  store i32 1, i32* @mk712_interrupt.debounce, align 4
  %28 = load i32, i32* @mk712_dev, align 4
  %29 = load i32, i32* @BTN_TOUCH, align 4
  %30 = call i32 @input_report_key(i32 %28, i32 %29, i32 0)
  br label %47

31:                                               ; preds = %19
  %32 = load i32, i32* @mk712_interrupt.debounce, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* @mk712_interrupt.debounce, align 4
  br label %47

35:                                               ; preds = %31
  %36 = load i32, i32* @mk712_dev, align 4
  %37 = load i32, i32* @BTN_TOUCH, align 4
  %38 = call i32 @input_report_key(i32 %36, i32 %37, i32 1)
  %39 = load i32, i32* @mk712_dev, align 4
  %40 = load i32, i32* @ABS_X, align 4
  %41 = load i16, i16* @mk712_interrupt.last_x, align 2
  %42 = call i32 @input_report_abs(i32 %39, i32 %40, i16 zeroext %41)
  %43 = load i32, i32* @mk712_dev, align 4
  %44 = load i32, i32* @ABS_Y, align 4
  %45 = load i16, i16* @mk712_interrupt.last_y, align 2
  %46 = call i32 @input_report_abs(i32 %43, i32 %44, i16 zeroext %45)
  br label %47

47:                                               ; preds = %35, %34, %27, %18
  %48 = load i64, i64* @mk712_io, align 8
  %49 = load i64, i64* @MK712_X, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @inw(i64 %50)
  %52 = and i32 %51, 4095
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* @mk712_interrupt.last_x, align 2
  %54 = load i64, i64* @mk712_io, align 8
  %55 = load i64, i64* @MK712_Y, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @inw(i64 %56)
  %58 = and i32 %57, 4095
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* @mk712_interrupt.last_y, align 2
  %60 = load i32, i32* @mk712_dev, align 4
  %61 = call i32 @input_sync(i32 %60)
  %62 = call i32 @spin_unlock(i32* @mk712_lock)
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i16 zeroext) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
