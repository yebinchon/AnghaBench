; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3530.c_lm3530_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3530.c_lm3530_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm3530_platform_data = type { i64, i64 }
%struct.lm3530_data = type { i64, i32, %struct.TYPE_2__, %struct.lm3530_platform_data*, i32*, i32, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"platform data required\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@LM3530_BL_MODE_PWM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Illegal Mode request\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"I2C_FUNC_I2C not supported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@LM3530_LED_DEV = common dso_local global i32 0, align 4
@lm3530_brightness_set = common dso_local global i32 0, align 4
@MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@lm3530_groups = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"vin\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"regulator get failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Register Init failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Register led class failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm3530_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3530_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm3530_platform_data*, align 8
  %7 = alloca %struct.lm3530_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.lm3530_platform_data* @dev_get_platdata(i32* %10)
  store %struct.lm3530_platform_data* %11, %struct.lm3530_platform_data** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %6, align 8
  %13 = icmp eq %struct.lm3530_platform_data* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %146

20:                                               ; preds = %2
  %21 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %6, align 8
  %22 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LM3530_BL_MODE_PWM, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %146

32:                                               ; preds = %20
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @I2C_FUNC_I2C, align 4
  %37 = call i32 @i2c_check_functionality(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %146

45:                                               ; preds = %32
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.lm3530_data* @devm_kzalloc(i32* %47, i32 64, i32 %48)
  store %struct.lm3530_data* %49, %struct.lm3530_data** %7, align 8
  %50 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %51 = icmp eq %struct.lm3530_data* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %146

55:                                               ; preds = %45
  %56 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %6, align 8
  %57 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %60 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %63 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %62, i32 0, i32 6
  store %struct.i2c_client* %61, %struct.i2c_client** %63, align 8
  %64 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %6, align 8
  %65 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %66 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %65, i32 0, i32 3
  store %struct.lm3530_platform_data* %64, %struct.lm3530_platform_data** %66, align 8
  %67 = load i32, i32* @LED_OFF, align 4
  %68 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %69 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  %70 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %71 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %70, i32 0, i32 1
  store i32 0, i32* %71, align 8
  %72 = load i32, i32* @LM3530_LED_DEV, align 4
  %73 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %74 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @lm3530_brightness_set, align 4
  %77 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %78 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @MAX_BRIGHTNESS, align 4
  %81 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %82 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @lm3530_groups, align 4
  %85 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %86 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %90 = call i32 @i2c_set_clientdata(%struct.i2c_client* %88, %struct.lm3530_data* %89)
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = call i32* @devm_regulator_get(i32* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %95 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %94, i32 0, i32 4
  store i32* %93, i32** %95, align 8
  %96 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %97 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = call i64 @IS_ERR(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %55
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = call i32 (i32*, i8*, ...) @dev_err(i32* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %105 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %106 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @PTR_ERR(i32* %107)
  store i32 %108, i32* %8, align 4
  %109 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %110 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %109, i32 0, i32 4
  store i32* null, i32** %110, align 8
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %146

112:                                              ; preds = %55
  %113 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %114 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %113, i32 0, i32 3
  %115 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %114, align 8
  %116 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  %120 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %121 = call i32 @lm3530_init_registers(%struct.lm3530_data* %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = load i32, i32* %8, align 4
  %128 = call i32 (i32*, i8*, ...) @dev_err(i32* %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %146

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %112
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %132, i32 0, i32 0
  %134 = load %struct.lm3530_data*, %struct.lm3530_data** %7, align 8
  %135 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %134, i32 0, i32 2
  %136 = call i32 @led_classdev_register(i32* %133, %struct.TYPE_2__* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %131
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = load i32, i32* %8, align 4
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %3, align 4
  br label %146

145:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %139, %124, %101, %52, %39, %26, %14
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.lm3530_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.lm3530_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm3530_data*) #1

declare dso_local i32* @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @lm3530_init_registers(%struct.lm3530_data*) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
