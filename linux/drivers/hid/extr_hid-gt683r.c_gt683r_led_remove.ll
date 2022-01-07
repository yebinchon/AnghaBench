; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-gt683r.c_gt683r_led_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-gt683r.c_gt683r_led_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.gt683r_led = type { i32, i32* }

@GT683R_LED_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @gt683r_led_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gt683r_led_remove(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gt683r_led*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %6 = call %struct.gt683r_led* @hid_get_drvdata(%struct.hid_device* %5)
  store %struct.gt683r_led* %6, %struct.gt683r_led** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %19, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @GT683R_LED_COUNT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load %struct.gt683r_led*, %struct.gt683r_led** %4, align 8
  %13 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @led_classdev_unregister(i32* %17)
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %7

22:                                               ; preds = %7
  %23 = load %struct.gt683r_led*, %struct.gt683r_led** %4, align 8
  %24 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %23, i32 0, i32 0
  %25 = call i32 @flush_work(i32* %24)
  %26 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %27 = call i32 @hid_hw_stop(%struct.hid_device* %26)
  ret void
}

declare dso_local %struct.gt683r_led* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
