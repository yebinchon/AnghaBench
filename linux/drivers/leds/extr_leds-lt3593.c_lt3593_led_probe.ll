; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lt3593.c_lt3593_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lt3593.c_lt3593_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i64 }
%struct.lt3593_led_data = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.fwnode_handle = type { i32 }
%struct.led_init_data = type { i8*, i32, %struct.fwnode_handle* }

@LEDS_GPIO_DEFSTATE_OFF = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Device must have exactly one LED sub-node.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"lltc,ctrl\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"linux,default-trigger\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"default-state\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@LEDS_GPIO_DEFSTATE_ON = common dso_local global i32 0, align 4
@lt3593_led_set = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@LED_LT3593_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lt3593_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lt3593_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.lt3593_led_data*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.led_init_data, align 8
  %10 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load i32, i32* @LEDS_GPIO_DEFSTATE_OFF, align 4
  store i32 %13, i32* %8, align 4
  %14 = bitcast %struct.led_init_data* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %116

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.lt3593_led_data* @devm_kzalloc(%struct.device* %23, i32 32, i32 %24)
  store %struct.lt3593_led_data* %25, %struct.lt3593_led_data** %5, align 8
  %26 = load %struct.lt3593_led_data*, %struct.lt3593_led_data** %5, align 8
  %27 = icmp ne %struct.lt3593_led_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %116

31:                                               ; preds = %22
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @device_get_child_node_count(%struct.device* %32)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %116

40:                                               ; preds = %31
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @devm_gpiod_get(%struct.device* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %43 = load %struct.lt3593_led_data*, %struct.lt3593_led_data** %5, align 8
  %44 = getelementptr inbounds %struct.lt3593_led_data, %struct.lt3593_led_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.lt3593_led_data*, %struct.lt3593_led_data** %5, align 8
  %46 = getelementptr inbounds %struct.lt3593_led_data, %struct.lt3593_led_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load %struct.lt3593_led_data*, %struct.lt3593_led_data** %5, align 8
  %52 = getelementptr inbounds %struct.lt3593_led_data, %struct.lt3593_led_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %116

55:                                               ; preds = %40
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call %struct.fwnode_handle* @device_get_next_child_node(%struct.device* %56, i32* null)
  store %struct.fwnode_handle* %57, %struct.fwnode_handle** %6, align 8
  %58 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %59 = load %struct.lt3593_led_data*, %struct.lt3593_led_data** %5, align 8
  %60 = getelementptr inbounds %struct.lt3593_led_data, %struct.lt3593_led_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %61)
  %63 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %64 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %10)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %55
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @LEDS_GPIO_DEFSTATE_ON, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %66
  br label %73

73:                                               ; preds = %72, %55
  %74 = load i32, i32* @lt3593_led_set, align 4
  %75 = load %struct.lt3593_led_data*, %struct.lt3593_led_data** %5, align 8
  %76 = getelementptr inbounds %struct.lt3593_led_data, %struct.lt3593_led_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @LED_FULL, align 4
  br label %84

82:                                               ; preds = %73
  %83 = load i32, i32* @LED_OFF, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load %struct.lt3593_led_data*, %struct.lt3593_led_data** %5, align 8
  %87 = getelementptr inbounds %struct.lt3593_led_data, %struct.lt3593_led_data* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  %89 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %90 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %9, i32 0, i32 2
  store %struct.fwnode_handle* %89, %struct.fwnode_handle** %90, align 8
  %91 = load i32, i32* @LED_LT3593_NAME, align 4
  %92 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %9, i32 0, i32 1
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %93, align 8
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load %struct.lt3593_led_data*, %struct.lt3593_led_data** %5, align 8
  %96 = getelementptr inbounds %struct.lt3593_led_data, %struct.lt3593_led_data* %95, i32 0, i32 0
  %97 = call i32 @devm_led_classdev_register_ext(%struct.device* %94, %struct.TYPE_4__* %96, %struct.led_init_data* %9)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %84
  %101 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %102 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %116

104:                                              ; preds = %84
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = getelementptr inbounds %struct.device, %struct.device* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.lt3593_led_data*, %struct.lt3593_led_data** %5, align 8
  %109 = getelementptr inbounds %struct.lt3593_led_data, %struct.lt3593_led_data* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i64 %107, i64* %112, align 8
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = load %struct.lt3593_led_data*, %struct.lt3593_led_data** %5, align 8
  %115 = call i32 @platform_set_drvdata(%struct.platform_device* %113, %struct.lt3593_led_data* %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %104, %100, %50, %35, %28, %19
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.lt3593_led_data* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @device_get_child_node_count(%struct.device*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local %struct.fwnode_handle* @device_get_next_child_node(%struct.device*, i32*) #2

declare dso_local i32 @fwnode_property_read_string(%struct.fwnode_handle*, i8*, i8**) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @devm_led_classdev_register_ext(%struct.device*, %struct.TYPE_4__*, %struct.led_init_data*) #2

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lt3593_led_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
