; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input-leds.c_input_leds_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input-leds.c_input_leds_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handle = type { %struct.input_leds* }
%struct.input_leds = type { i32, %struct.input_led* }
%struct.input_led = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.input_leds* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_handle*)* @input_leds_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_leds_disconnect(%struct.input_handle* %0) #0 {
  %2 = alloca %struct.input_handle*, align 8
  %3 = alloca %struct.input_leds*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_led*, align 8
  store %struct.input_handle* %0, %struct.input_handle** %2, align 8
  %6 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %7 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %6, i32 0, i32 0
  %8 = load %struct.input_leds*, %struct.input_leds** %7, align 8
  store %struct.input_leds* %8, %struct.input_leds** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %30, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.input_leds*, %struct.input_leds** %3, align 8
  %12 = getelementptr inbounds %struct.input_leds, %struct.input_leds* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  %16 = load %struct.input_leds*, %struct.input_leds** %3, align 8
  %17 = getelementptr inbounds %struct.input_leds, %struct.input_leds* %16, i32 0, i32 1
  %18 = load %struct.input_led*, %struct.input_led** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.input_led, %struct.input_led* %18, i64 %20
  store %struct.input_led* %21, %struct.input_led** %5, align 8
  %22 = load %struct.input_led*, %struct.input_led** %5, align 8
  %23 = getelementptr inbounds %struct.input_led, %struct.input_led* %22, i32 0, i32 0
  %24 = call i32 @led_classdev_unregister(%struct.TYPE_2__* %23)
  %25 = load %struct.input_led*, %struct.input_led** %5, align 8
  %26 = getelementptr inbounds %struct.input_led, %struct.input_led* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.input_leds*, %struct.input_leds** %27, align 8
  %29 = call i32 @kfree(%struct.input_leds* %28)
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %9

33:                                               ; preds = %9
  %34 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %35 = call i32 @input_close_device(%struct.input_handle* %34)
  %36 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %37 = call i32 @input_unregister_handle(%struct.input_handle* %36)
  %38 = load %struct.input_leds*, %struct.input_leds** %3, align 8
  %39 = call i32 @kfree(%struct.input_leds* %38)
  ret void
}

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.input_leds*) #1

declare dso_local i32 @input_close_device(%struct.input_handle*) #1

declare dso_local i32 @input_unregister_handle(%struct.input_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
