; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ipaq-micro.c_micro_leds_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ipaq-micro.c_micro_leds_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ipaq_micro = type { i32 }
%struct.ipaq_micro_msg = type { i32, i32*, i32 }

@MSG_NOTIFY_LED = common dso_local global i32 0, align 4
@LED_GREEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @micro_leds_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micro_leds_brightness_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipaq_micro*, align 8
  %6 = alloca %struct.ipaq_micro_msg, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %8 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ipaq_micro* @dev_get_drvdata(i32 %13)
  store %struct.ipaq_micro* %14, %struct.ipaq_micro** %5, align 8
  %15 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %6, i32 0, i32 0
  store i32 4, i32* %15, align 8
  %16 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %6, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %6, i32 0, i32 2
  %18 = load i32, i32* @MSG_NOTIFY_LED, align 4
  store i32 %18, i32* %17, align 8
  %19 = load i32, i32* @LED_GREEN, align 4
  %20 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %6, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %19, i32* %22, align 4
  %23 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %6, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %6, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %6, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 1, i32* %34, align 4
  br label %42

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %6, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 1, i32* %38, align 4
  %39 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %6, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.ipaq_micro*, %struct.ipaq_micro** %5, align 8
  %44 = call i32 @ipaq_micro_tx_msg_sync(%struct.ipaq_micro* %43, %struct.ipaq_micro_msg* %6)
  ret i32 %44
}

declare dso_local %struct.ipaq_micro* @dev_get_drvdata(i32) #1

declare dso_local i32 @ipaq_micro_tx_msg_sync(%struct.ipaq_micro*, %struct.ipaq_micro_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
