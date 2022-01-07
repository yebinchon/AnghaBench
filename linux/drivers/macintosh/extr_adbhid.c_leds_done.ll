; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_adbhid.c_leds_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_adbhid.c_leds_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32 }

@leds_lock = common dso_local global i32 0, align 4
@pending_led_start = common dso_local global i64 0, align 8
@pending_led_end = common dso_local global i64 0, align 8
@pending_devs = common dso_local global i32* null, align 8
@leds_pending = common dso_local global i32* null, align 8
@leds_req_pending = common dso_local global i32 0, align 4
@led_request = common dso_local global i32 0, align 4
@KEYB_LEDREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adb_request*)* @leds_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leds_done(%struct.adb_request* %0) #0 {
  %2 = alloca %struct.adb_request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.adb_request* %0, %struct.adb_request** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @leds_lock, i64 %7)
  %9 = load i64, i64* @pending_led_start, align 8
  %10 = load i64, i64* @pending_led_end, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  %13 = load i32*, i32** @pending_devs, align 8
  %14 = load i64, i64* @pending_led_start, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32*, i32** @leds_pending, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %3, align 4
  %23 = load i32*, i32** @leds_pending, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 0, i32* %26, align 4
  %27 = load i64, i64* @pending_led_start, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* @pending_led_start, align 8
  %29 = load i64, i64* @pending_led_start, align 8
  %30 = icmp ult i64 %29, 16
  br i1 %30, label %31, label %33

31:                                               ; preds = %12
  %32 = load i64, i64* @pending_led_start, align 8
  br label %34

33:                                               ; preds = %12
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i64 [ %32, %31 ], [ 0, %33 ]
  store i64 %35, i64* @pending_led_start, align 8
  %36 = load i32, i32* @leds_req_pending, align 4
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %1
  store i32 0, i32* @leds_req_pending, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* @leds_lock, i64 %39)
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @KEYB_LEDREG, align 4
  %46 = call i32 @ADB_WRITEREG(i32 %44, i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = xor i32 %47, -1
  %49 = call i32 @adb_request(i32* @led_request, void (%struct.adb_request*)* @leds_done, i32 0, i32 3, i32 %46, i32 255, i32 %48)
  br label %50

50:                                               ; preds = %43, %38
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @adb_request(i32*, void (%struct.adb_request*)*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADB_WRITEREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
