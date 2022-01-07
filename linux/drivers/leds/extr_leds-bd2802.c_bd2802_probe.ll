; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-bd2802.c_bd2802_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-bd2802.c_bd2802_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.bd2802_led = type { %struct.i2c_client*, i32, i32, i32, %struct.bd2802_led_platform_data* }
%struct.bd2802_led_platform_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"RGB_RESETB\00", align 1
@BD2802_REG_CLKSETUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to detect device\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"return 0x%02x\0A\00", align 1
@BD2802_PATTERN_HALF = common dso_local global i32 0, align 4
@BD2802_CURRENT_032 = common dso_local global i32 0, align 4
@bd2802_attributes = common dso_local global %struct.TYPE_7__** null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"failed: sysfs file %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bd2802_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd2802_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.bd2802_led*, align 8
  %7 = alloca %struct.bd2802_led_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.bd2802_led* @devm_kzalloc(i32* %11, i32 32, i32 %12)
  store %struct.bd2802_led* %13, %struct.bd2802_led** %6, align 8
  %14 = load %struct.bd2802_led*, %struct.bd2802_led** %6, align 8
  %15 = icmp ne %struct.bd2802_led* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %133

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.bd2802_led*, %struct.bd2802_led** %6, align 8
  %22 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %21, i32 0, i32 0
  store %struct.i2c_client* %20, %struct.i2c_client** %22, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call %struct.bd2802_led_platform_data* @dev_get_platdata(i32* %24)
  %26 = load %struct.bd2802_led*, %struct.bd2802_led** %6, align 8
  %27 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %26, i32 0, i32 4
  store %struct.bd2802_led_platform_data* %25, %struct.bd2802_led_platform_data** %27, align 8
  store %struct.bd2802_led_platform_data* %25, %struct.bd2802_led_platform_data** %7, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load %struct.bd2802_led*, %struct.bd2802_led** %6, align 8
  %30 = call i32 @i2c_set_clientdata(%struct.i2c_client* %28, %struct.bd2802_led* %29)
  %31 = load %struct.bd2802_led_platform_data*, %struct.bd2802_led_platform_data** %7, align 8
  %32 = getelementptr inbounds %struct.bd2802_led_platform_data, %struct.bd2802_led_platform_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %35 = call i32 @gpio_request_one(i32 %33, i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @udelay(i32 100)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @BD2802_REG_CLKSETUP, align 4
  %39 = call i32 @bd2802_write_byte(%struct.i2c_client* %37, i32 %38, i32 0)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %19
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %133

47:                                               ; preds = %19
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dev_info(i32* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47
  %53 = load %struct.bd2802_led*, %struct.bd2802_led** %6, align 8
  %54 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %53, i32 0, i32 4
  %55 = load %struct.bd2802_led_platform_data*, %struct.bd2802_led_platform_data** %54, align 8
  %56 = getelementptr inbounds %struct.bd2802_led_platform_data, %struct.bd2802_led_platform_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @gpio_set_value(i32 %57, i32 0)
  %59 = load i32, i32* @BD2802_PATTERN_HALF, align 4
  %60 = load %struct.bd2802_led*, %struct.bd2802_led** %6, align 8
  %61 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @BD2802_CURRENT_032, align 4
  %63 = load %struct.bd2802_led*, %struct.bd2802_led** %6, align 8
  %64 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.bd2802_led*, %struct.bd2802_led** %6, align 8
  %66 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %65, i32 0, i32 1
  %67 = call i32 @init_rwsem(i32* %66)
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %101, %52
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @bd2802_attributes, align 8
  %71 = call i32 @ARRAY_SIZE(%struct.TYPE_7__** %70)
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %104

73:                                               ; preds = %68
  %74 = load %struct.bd2802_led*, %struct.bd2802_led** %6, align 8
  %75 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %74, i32 0, i32 0
  %76 = load %struct.i2c_client*, %struct.i2c_client** %75, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @bd2802_attributes, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %78, i64 %80
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = call i32 @device_create_file(i32* %77, %struct.TYPE_7__* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %73
  %87 = load %struct.bd2802_led*, %struct.bd2802_led** %6, align 8
  %88 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %87, i32 0, i32 0
  %89 = load %struct.i2c_client*, %struct.i2c_client** %88, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @bd2802_attributes, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %91, i64 %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32*, i8*, ...) @dev_err(i32* %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  br label %111

100:                                              ; preds = %73
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %68

104:                                              ; preds = %68
  %105 = load %struct.bd2802_led*, %struct.bd2802_led** %6, align 8
  %106 = call i32 @bd2802_register_led_classdev(%struct.bd2802_led* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %111

110:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %133

111:                                              ; preds = %109, %86
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %128, %111
  %115 = load i32, i32* %9, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %114
  %118 = load %struct.bd2802_led*, %struct.bd2802_led** %6, align 8
  %119 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %118, i32 0, i32 0
  %120 = load %struct.i2c_client*, %struct.i2c_client** %119, align 8
  %121 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @bd2802_attributes, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %122, i64 %124
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = call i32 @device_remove_file(i32* %121, %struct.TYPE_7__* %126)
  br label %128

128:                                              ; preds = %117
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %9, align 4
  br label %114

131:                                              ; preds = %114
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %110, %42, %16
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.bd2802_led* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.bd2802_led_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.bd2802_led*) #1

declare dso_local i32 @gpio_request_one(i32, i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @bd2802_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__**) #1

declare dso_local i32 @device_create_file(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @bd2802_register_led_classdev(%struct.bd2802_led*) #1

declare dso_local i32 @device_remove_file(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
