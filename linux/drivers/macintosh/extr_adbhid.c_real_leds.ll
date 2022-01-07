; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_adbhid.c_real_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_adbhid.c_real_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@leds_lock = common dso_local global i32 0, align 4
@leds_req_pending = common dso_local global i32 0, align 4
@led_request = common dso_local global i32 0, align 4
@leds_done = common dso_local global i32 0, align 4
@KEYB_LEDREG = common dso_local global i32 0, align 4
@leds_pending = common dso_local global i32* null, align 8
@pending_devs = common dso_local global i32* null, align 8
@pending_led_end = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32)* @real_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @real_leds(i8 zeroext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @leds_lock, i64 %6)
  %8 = load i32, i32* @leds_req_pending, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  store i32 1, i32* @leds_req_pending, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_unlock_irqrestore(i32* @leds_lock, i64 %11)
  %13 = load i32, i32* @leds_done, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @KEYB_LEDREG, align 4
  %16 = call i32 @ADB_WRITEREG(i32 %14, i32 %15)
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  %19 = xor i32 %18, -1
  %20 = trunc i32 %19 to i8
  %21 = call i32 @adb_request(i32* @led_request, i32 %13, i32 0, i32 3, i32 %16, i32 255, i8 zeroext %20)
  br label %55

22:                                               ; preds = %2
  %23 = load i32*, i32** @leds_pending, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 256
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32*, i32** @pending_devs, align 8
  %33 = load i64, i64* @pending_led_end, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %31, i32* %34, align 4
  %35 = load i64, i64* @pending_led_end, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* @pending_led_end, align 8
  %37 = load i64, i64* @pending_led_end, align 8
  %38 = icmp ult i64 %37, 16
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i64, i64* @pending_led_end, align 8
  br label %42

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i64 [ %40, %39 ], [ 0, %41 ]
  store i64 %43, i64* @pending_led_end, align 8
  br label %44

44:                                               ; preds = %42, %22
  %45 = load i8, i8* %3, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %46, 256
  %48 = load i32*, i32** @leds_pending, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %44
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* @leds_lock, i64 %53)
  br label %55

55:                                               ; preds = %52, %10
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @adb_request(i32*, i32, i32, i32, i32, i32, i8 zeroext) #1

declare dso_local i32 @ADB_WRITEREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
