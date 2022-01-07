; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-led.c_delcom_get_lednum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-led.c_delcom_get_lednum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidled_led = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hidled_led, %struct.hidled_led }

@DELCOM_RED_LED = common dso_local global i32 0, align 4
@DELCOM_GREEN_LED = common dso_local global i32 0, align 4
@DELCOM_BLUE_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidled_led*)* @delcom_get_lednum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delcom_get_lednum(%struct.hidled_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidled_led*, align 8
  store %struct.hidled_led* %0, %struct.hidled_led** %3, align 8
  %4 = load %struct.hidled_led*, %struct.hidled_led** %3, align 8
  %5 = load %struct.hidled_led*, %struct.hidled_led** %3, align 8
  %6 = getelementptr inbounds %struct.hidled_led, %struct.hidled_led* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = icmp eq %struct.hidled_led* %4, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @DELCOM_RED_LED, align 4
  store i32 %11, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.hidled_led*, %struct.hidled_led** %3, align 8
  %14 = load %struct.hidled_led*, %struct.hidled_led** %3, align 8
  %15 = getelementptr inbounds %struct.hidled_led, %struct.hidled_led* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = icmp eq %struct.hidled_led* %13, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @DELCOM_GREEN_LED, align 4
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %12
  %22 = load i32, i32* @DELCOM_BLUE_LED, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %19, %10
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
