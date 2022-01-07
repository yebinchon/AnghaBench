; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-spi-byte.c_spi_byte_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-spi-byte.c_spi_byte_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.device }
%struct.device = type { i32 }
%struct.of_device_id = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.device_node = type { i32 }
%struct.spi_byte_led = type { i32, %struct.TYPE_5__, %struct.TYPE_4__*, i32, %struct.spi_device* }
%struct.TYPE_5__ = type { i64, i64, i32 (%struct.TYPE_5__*, i64)*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"leds-spi-byte::\00", align 1
@spi_byte_dt_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Device must have exactly one LED sub-node.\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@LED_OFF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"default-state\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"default-state can only be 'on' or 'off'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @spi_byte_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_byte_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.spi_byte_led*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %13 = load i32, i32* @spi_byte_dt_ids, align 4
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.of_device_id* @of_match_device(i32 %13, %struct.device* %14)
  store %struct.of_device_id* %15, %struct.of_device_id** %4, align 8
  %16 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %17 = icmp ne %struct.of_device_id* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %142

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @of_get_child_count(i32 %24)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %142

32:                                               ; preds = %21
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.device_node* @of_get_next_child(i32 %35, i32* null)
  store %struct.device_node* %36, %struct.device_node** %5, align 8
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.spi_byte_led* @devm_kzalloc(%struct.device* %37, i32 64, i32 %38)
  store %struct.spi_byte_led* %39, %struct.spi_byte_led** %7, align 8
  %40 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %41 = icmp ne %struct.spi_byte_led* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %142

45:                                               ; preds = %32
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = call i32 @of_property_read_string(%struct.device_node* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %8)
  %48 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %49 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strlcpy(i32 %50, i8* %51, i32 4)
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %55 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %54, i32 0, i32 4
  store %struct.spi_device* %53, %struct.spi_device** %55, align 8
  %56 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %57 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %56, i32 0, i32 0
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %60 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %63 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %62, i32 0, i32 2
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %63, align 8
  %64 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %65 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %68 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 8
  %70 = load i64, i64* @LED_OFF, align 8
  %71 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %72 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %75 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %80 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %78, %83
  %85 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %86 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i64 %84, i64* %87, align 8
  %88 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %89 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  store i32 (%struct.TYPE_5__*, i64)* @spi_byte_brightness_set_blocking, i32 (%struct.TYPE_5__*, i64)** %90, align 8
  %91 = load %struct.device_node*, %struct.device_node** %5, align 8
  %92 = call i8* @of_get_property(%struct.device_node* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i8* %92, i8** %9, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %118

95:                                               ; preds = %45
  %96 = load i8*, i8** %9, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %95
  %100 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %101 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %105 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  br label %117

107:                                              ; preds = %95
  %108 = load i8*, i8** %9, align 8
  %109 = call i64 @strcmp(i8* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %142

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %99
  br label %118

118:                                              ; preds = %117, %45
  %119 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %120 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %119, i32 0, i32 1
  %121 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %122 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @spi_byte_brightness_set_blocking(%struct.TYPE_5__* %120, i64 %124)
  %126 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %127 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %126, i32 0, i32 0
  %128 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %129 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %128, i32 0, i32 1
  %130 = call i32 @devm_led_classdev_register(%struct.device* %127, %struct.TYPE_5__* %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %118
  %134 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %135 = getelementptr inbounds %struct.spi_byte_led, %struct.spi_byte_led* %134, i32 0, i32 0
  %136 = call i32 @mutex_destroy(i32* %135)
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %2, align 4
  br label %142

138:                                              ; preds = %118
  %139 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %140 = load %struct.spi_byte_led*, %struct.spi_byte_led** %7, align 8
  %141 = call i32 @spi_set_drvdata(%struct.spi_device* %139, %struct.spi_byte_led* %140)
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %138, %133, %111, %42, %27, %18
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @of_get_child_count(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.device_node* @of_get_next_child(i32, i32*) #1

declare dso_local %struct.spi_byte_led* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spi_byte_brightness_set_blocking(%struct.TYPE_5__*, i64) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @devm_led_classdev_register(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.spi_byte_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
