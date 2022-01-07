; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max8997.c_max8997_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max8997.c_max8997_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.max8997_dev = type { i32 }
%struct.max8997_platform_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64*, i64* }
%struct.max8997_led = type { i32, %struct.TYPE_8__, i32, %struct.max8997_dev* }
%struct.TYPE_8__ = type { i8*, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"max8997-led%d\00", align 1
@max8997_led_brightness_set = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@max8997_groups = common dso_local global i32 0, align 4
@MAX8997_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8997_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max8997_dev*, align 8
  %5 = alloca %struct.max8997_platform_data*, align 8
  %6 = alloca %struct.max8997_led*, align 8
  %7 = alloca [20 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.max8997_dev* @dev_get_drvdata(i32 %14)
  store %struct.max8997_dev* %15, %struct.max8997_dev** %4, align 8
  %16 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %17 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.max8997_platform_data* @dev_get_platdata(i32 %18)
  store %struct.max8997_platform_data* %19, %struct.max8997_platform_data** %5, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %21 = icmp eq %struct.max8997_platform_data* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 1
  %25 = call i32 @dev_err(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %142

28:                                               ; preds = %1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 1
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.max8997_led* @devm_kzalloc(%struct.TYPE_7__* %30, i32 64, i32 %31)
  store %struct.max8997_led* %32, %struct.max8997_led** %6, align 8
  %33 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %34 = icmp eq %struct.max8997_led* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %142

38:                                               ; preds = %28
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %43 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snprintf(i8* %44, i32 20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %50 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %51 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  %53 = load i32, i32* @max8997_led_brightness_set, align 4
  %54 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %55 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 5
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %58 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %59 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %64 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @max8997_groups, align 4
  %67 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %68 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 8
  %70 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %71 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %72 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %71, i32 0, i32 3
  store %struct.max8997_dev* %70, %struct.max8997_dev** %72, align 8
  %73 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %74 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = icmp ne %struct.TYPE_6__* %75, null
  br i1 %76, label %77, label %122

77:                                               ; preds = %38
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %78 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %79 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %84 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %82, i64 %86
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %9, align 8
  %89 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %90 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %95 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %93, i64 %97
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %10, align 8
  %100 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @max8997_led_set_mode(%struct.max8997_led* %100, i64 %101)
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %105 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %103, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %77
  %110 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %111 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %10, align 8
  br label %114

114:                                              ; preds = %109, %77
  %115 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @max8997_led_set_current(%struct.max8997_led* %115, i64 %116)
  %118 = load i64, i64* %10, align 8
  %119 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %120 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  store i64 %118, i64* %121, align 8
  br label %128

122:                                              ; preds = %38
  %123 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %124 = load i64, i64* @MAX8997_NONE, align 8
  %125 = call i32 @max8997_led_set_mode(%struct.max8997_led* %123, i64 %124)
  %126 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %127 = call i32 @max8997_led_set_current(%struct.max8997_led* %126, i64 0)
  br label %128

128:                                              ; preds = %122, %114
  %129 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %130 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %129, i32 0, i32 2
  %131 = call i32 @mutex_init(i32* %130)
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 1
  %134 = load %struct.max8997_led*, %struct.max8997_led** %6, align 8
  %135 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %134, i32 0, i32 1
  %136 = call i32 @devm_led_classdev_register(%struct.TYPE_7__* %133, %struct.TYPE_8__* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %128
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %2, align 4
  br label %142

141:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %139, %35, %22
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.max8997_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.max8997_platform_data* @dev_get_platdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.max8997_led* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @max8997_led_set_mode(%struct.max8997_led*, i64) #1

declare dso_local i32 @max8997_led_set_current(%struct.max8997_led*, i64) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_led_classdev_register(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
