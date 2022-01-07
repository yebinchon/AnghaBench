; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-asic3.c_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-asic3.c_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mfd_cell = type { i64 }
%struct.asic3 = type { i32 }

@LED_OFF = common dso_local global i32 0, align 4
@LED_EN = common dso_local global i32 0, align 4
@led_n_base = common dso_local global i32* null, align 8
@ASIC3_LED_PeriodTime = common dso_local global i64 0, align 8
@ASIC3_LED_DutyTime = common dso_local global i64 0, align 8
@ASIC3_LED_AutoStopCount = common dso_local global i64 0, align 8
@ASIC3_LED_TimeBase = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brightness_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.mfd_cell*, align 8
  %7 = alloca %struct.asic3*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %11 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.platform_device* @to_platform_device(i32 %14)
  store %struct.platform_device* %15, %struct.platform_device** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %17 = call %struct.mfd_cell* @mfd_get_cell(%struct.platform_device* %16)
  store %struct.mfd_cell* %17, %struct.mfd_cell** %6, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.asic3* @dev_get_drvdata(i32 %21)
  store %struct.asic3* %22, %struct.asic3** %7, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @LED_OFF, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @LED_EN, align 4
  %29 = or i32 %28, 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi i32 [ 0, %26 ], [ %29, %27 ]
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** @led_n_base, align 8
  %33 = load %struct.mfd_cell*, %struct.mfd_cell** %6, align 8
  %34 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load %struct.asic3*, %struct.asic3** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* @ASIC3_LED_PeriodTime, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @asic3_write_register(%struct.asic3* %38, i64 %42, i32 32)
  %44 = load %struct.asic3*, %struct.asic3** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* @ASIC3_LED_DutyTime, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @asic3_write_register(%struct.asic3* %44, i64 %48, i32 32)
  %50 = load %struct.asic3*, %struct.asic3** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* @ASIC3_LED_AutoStopCount, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @asic3_write_register(%struct.asic3* %50, i64 %54, i32 0)
  %56 = load %struct.asic3*, %struct.asic3** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = load i64, i64* @ASIC3_LED_TimeBase, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @asic3_write_register(%struct.asic3* %56, i64 %60, i32 %61)
  ret void
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.mfd_cell* @mfd_get_cell(%struct.platform_device*) #1

declare dso_local %struct.asic3* @dev_get_drvdata(i32) #1

declare dso_local i32 @asic3_write_register(%struct.asic3*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
