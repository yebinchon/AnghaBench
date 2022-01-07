; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_24hd_update_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_24hd_update_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { i32 }
%struct.wacom_led = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"can't find LED %d in group %d\0A\00", align 1
@LED_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom*, i32, i32)* @wacom_24hd_update_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_24hd_update_leds(%struct.wacom* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wacom*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wacom_led*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 8
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %3
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %53, %15
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %56

19:                                               ; preds = %16
  %20 = load %struct.wacom*, %struct.wacom** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.wacom_led* @wacom_led_find(%struct.wacom* %20, i32 %21, i32 %22)
  store %struct.wacom_led* %23, %struct.wacom_led** %7, align 8
  %24 = load %struct.wacom_led*, %struct.wacom_led** %7, align 8
  %25 = icmp ne %struct.wacom_led* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.wacom*, %struct.wacom** %4, align 8
  %28 = getelementptr inbounds %struct.wacom, %struct.wacom* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @hid_err(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %53

33:                                               ; preds = %19
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.wacom_led*, %struct.wacom_led** %7, align 8
  %44 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.wacom_led*, %struct.wacom_led** %7, align 8
  %46 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %45, i32 0, i32 1
  %47 = load i32, i32* @LED_FULL, align 4
  %48 = call i32 @led_trigger_event(i32* %46, i32 %47)
  br label %52

49:                                               ; preds = %36, %33
  %50 = load %struct.wacom_led*, %struct.wacom_led** %7, align 8
  %51 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %42
  br label %53

53:                                               ; preds = %52, %26
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %16

56:                                               ; preds = %16
  ret void
}

declare dso_local %struct.wacom_led* @wacom_led_find(%struct.wacom*, i32, i32) #1

declare dso_local i32 @hid_err(i32, i8*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @led_trigger_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
