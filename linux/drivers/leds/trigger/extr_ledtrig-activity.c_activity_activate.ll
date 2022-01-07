; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-activity.c_activity_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-activity.c_activity_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32, i64, i64 }
%struct.activity_data = type { i32, %struct.led_classdev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LED_BLINK_SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @activity_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activity_activate(%struct.led_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca %struct.activity_data*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.activity_data* @kzalloc(i32 16, i32 %5)
  store %struct.activity_data* %6, %struct.activity_data** %4, align 8
  %7 = load %struct.activity_data*, %struct.activity_data** %4, align 8
  %8 = icmp ne %struct.activity_data* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %14 = load %struct.activity_data*, %struct.activity_data** %4, align 8
  %15 = call i32 @led_set_trigger_data(%struct.led_classdev* %13, %struct.activity_data* %14)
  %16 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %17 = load %struct.activity_data*, %struct.activity_data** %4, align 8
  %18 = getelementptr inbounds %struct.activity_data, %struct.activity_data* %17, i32 0, i32 1
  store %struct.led_classdev* %16, %struct.led_classdev** %18, align 8
  %19 = load %struct.activity_data*, %struct.activity_data** %4, align 8
  %20 = getelementptr inbounds %struct.activity_data, %struct.activity_data* %19, i32 0, i32 0
  %21 = call i32 @timer_setup(i32* %20, i32 (i32*)* @led_activity_function, i32 0)
  %22 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %23 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %12
  %27 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %28 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %31 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %12
  %33 = load %struct.activity_data*, %struct.activity_data** %4, align 8
  %34 = getelementptr inbounds %struct.activity_data, %struct.activity_data* %33, i32 0, i32 0
  %35 = call i32 @led_activity_function(i32* %34)
  %36 = load i32, i32* @LED_BLINK_SW, align 4
  %37 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %38 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %37, i32 0, i32 0
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %32, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.activity_data* @kzalloc(i32, i32) #1

declare dso_local i32 @led_set_trigger_data(%struct.led_classdev*, %struct.activity_data*) #1

declare dso_local i32 @timer_setup(i32*, i32 (i32*)*, i32) #1

declare dso_local i32 @led_activity_function(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
