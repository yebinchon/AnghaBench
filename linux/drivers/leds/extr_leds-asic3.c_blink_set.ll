; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-asic3.c_blink_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-asic3.c_blink_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mfd_cell = type { i64 }
%struct.asic3 = type { i32 }

@MAX_MS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX_CLK = common dso_local global i64 0, align 8
@led_n_base = common dso_local global i32* null, align 8
@ASIC3_LED_PeriodTime = common dso_local global i64 0, align 8
@ASIC3_LED_DutyTime = common dso_local global i64 0, align 8
@ASIC3_LED_AutoStopCount = common dso_local global i64 0, align 8
@ASIC3_LED_TimeBase = common dso_local global i64 0, align 8
@LED_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i64*, i64*)* @blink_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blink_set(%struct.led_classdev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_classdev*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.mfd_cell*, align 8
  %10 = alloca %struct.asic3*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %15 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.platform_device* @to_platform_device(i32 %18)
  store %struct.platform_device* %19, %struct.platform_device** %8, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %21 = call %struct.mfd_cell* @mfd_get_cell(%struct.platform_device* %20)
  store %struct.mfd_cell* %21, %struct.mfd_cell** %9, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.asic3* @dev_get_drvdata(i32 %25)
  store %struct.asic3* %26, %struct.asic3** %10, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MAX_MS, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MAX_MS, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %111

39:                                               ; preds = %31
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = call i64 @MS_TO_CLK(i64 500)
  store i64 %48, i64* %11, align 8
  %49 = call i64 @MS_TO_CLK(i64 500)
  store i64 %49, i64* %12, align 8
  br label %66

50:                                               ; preds = %43, %39
  %51 = load i64*, i64** %6, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @MS_TO_CLK(i64 %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @MS_TO_CLK(i64 %55)
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* @MAX_CLK, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %111

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i32*, i32** @led_n_base, align 8
  %68 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %69 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  %73 = load %struct.asic3*, %struct.asic3** %10, align 8
  %74 = load i32, i32* %13, align 4
  %75 = zext i32 %74 to i64
  %76 = load i64, i64* @ASIC3_LED_PeriodTime, align 8
  %77 = add nsw i64 %75, %76
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %12, align 8
  %80 = add nsw i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @asic3_write_register(%struct.asic3* %73, i64 %77, i32 %81)
  %83 = load %struct.asic3*, %struct.asic3** %10, align 8
  %84 = load i32, i32* %13, align 4
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* @ASIC3_LED_DutyTime, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i64, i64* %11, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @asic3_write_register(%struct.asic3* %83, i64 %87, i32 %89)
  %91 = load %struct.asic3*, %struct.asic3** %10, align 8
  %92 = load i32, i32* %13, align 4
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* @ASIC3_LED_AutoStopCount, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @asic3_write_register(%struct.asic3* %91, i64 %95, i32 0)
  %97 = load %struct.asic3*, %struct.asic3** %10, align 8
  %98 = load i32, i32* %13, align 4
  %99 = zext i32 %98 to i64
  %100 = load i64, i64* @ASIC3_LED_TimeBase, align 8
  %101 = add nsw i64 %99, %100
  %102 = load i32, i32* @LED_EN, align 4
  %103 = or i32 %102, 4
  %104 = call i32 @asic3_write_register(%struct.asic3* %97, i64 %101, i32 %103)
  %105 = load i64, i64* %11, align 8
  %106 = call i64 @CLK_TO_MS(i64 %105)
  %107 = load i64*, i64** %6, align 8
  store i64 %106, i64* %107, align 8
  %108 = load i64, i64* %12, align 8
  %109 = call i64 @CLK_TO_MS(i64 %108)
  %110 = load i64*, i64** %7, align 8
  store i64 %109, i64* %110, align 8
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %66, %62, %36
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.mfd_cell* @mfd_get_cell(%struct.platform_device*) #1

declare dso_local %struct.asic3* @dev_get_drvdata(i32) #1

declare dso_local i64 @MS_TO_CLK(i64) #1

declare dso_local i32 @asic3_write_register(%struct.asic3*, i64, i32) #1

declare dso_local i64 @CLK_TO_MS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
