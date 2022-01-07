; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-clevo-mail.c_clevo_mail_led_blink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-clevo-mail.c_clevo_mail_led_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CLEVO_MAIL_LED_BLINK_0_5HZ = common dso_local global i32 0, align 4
@CLEVO_MAIL_LED_BLINK_1HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"clevo_mail_led_blink(..., %lu, %lu), returning -EINVAL (unsupported)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i64*, i64*)* @clevo_mail_led_blink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clevo_mail_led_blink(%struct.led_classdev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = call i32 (...) @i8042_lock_chip()
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i64*, i64** %5, align 8
  store i64 1000, i64* %19, align 8
  %20 = load i64*, i64** %6, align 8
  store i64 1000, i64* %20, align 8
  %21 = load i32, i32* @CLEVO_MAIL_LED_BLINK_0_5HZ, align 4
  %22 = call i32 @i8042_command(i32* null, i32 %21)
  store i32 0, i32* %7, align 4
  br label %53

23:                                               ; preds = %14, %3
  %24 = load i64*, i64** %5, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 500
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 500
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @CLEVO_MAIL_LED_BLINK_1HZ, align 4
  %33 = call i32 @i8042_command(i32* null, i32 %32)
  store i32 0, i32* %7, align 4
  br label %52

34:                                               ; preds = %27, %23
  %35 = load i64*, i64** %5, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 1000
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 1000
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @CLEVO_MAIL_LED_BLINK_0_5HZ, align 4
  %44 = call i32 @i8042_command(i32* null, i32 %43)
  store i32 0, i32* %7, align 4
  br label %51

45:                                               ; preds = %38, %34
  %46 = load i64*, i64** %5, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %49)
  br label %51

51:                                               ; preds = %45, %42
  br label %52

52:                                               ; preds = %51, %31
  br label %53

53:                                               ; preds = %52, %18
  %54 = call i32 (...) @i8042_unlock_chip()
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @i8042_lock_chip(...) #1

declare dso_local i32 @i8042_command(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @i8042_unlock_chip(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
