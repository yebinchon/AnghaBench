; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp3952.c_lp3952_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp3952.c_lp3952_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lp3952_led_array = type { i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"nrst\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to enable gpio: %d\0A\00", align 1
@lp3952_regmap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Probe failed. Device not found (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Unable to register led_classdev: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lp3952_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3952_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lp3952_led_array*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.lp3952_led_array* @devm_kzalloc(i32* %10, i32 16, i32 %11)
  store %struct.lp3952_led_array* %12, %struct.lp3952_led_array** %7, align 8
  %13 = load %struct.lp3952_led_array*, %struct.lp3952_led_array** %7, align 8
  %14 = icmp ne %struct.lp3952_led_array* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %89

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.lp3952_led_array*, %struct.lp3952_led_array** %7, align 8
  %21 = getelementptr inbounds %struct.lp3952_led_array, %struct.lp3952_led_array* %20, i32 0, i32 2
  store %struct.i2c_client* %19, %struct.i2c_client** %21, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %25 = call i32 @devm_gpiod_get(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.lp3952_led_array*, %struct.lp3952_led_array** %7, align 8
  %27 = getelementptr inbounds %struct.lp3952_led_array, %struct.lp3952_led_array* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.lp3952_led_array*, %struct.lp3952_led_array** %7, align 8
  %29 = getelementptr inbounds %struct.lp3952_led_array, %struct.lp3952_led_array* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %18
  %34 = load %struct.lp3952_led_array*, %struct.lp3952_led_array** %7, align 8
  %35 = getelementptr inbounds %struct.lp3952_led_array, %struct.lp3952_led_array* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %89

43:                                               ; preds = %18
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %44, i32* @lp3952_regmap)
  %46 = load %struct.lp3952_led_array*, %struct.lp3952_led_array** %7, align 8
  %47 = getelementptr inbounds %struct.lp3952_led_array, %struct.lp3952_led_array* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.lp3952_led_array*, %struct.lp3952_led_array** %7, align 8
  %49 = getelementptr inbounds %struct.lp3952_led_array, %struct.lp3952_led_array* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %43
  %54 = load %struct.lp3952_led_array*, %struct.lp3952_led_array** %7, align 8
  %55 = getelementptr inbounds %struct.lp3952_led_array, %struct.lp3952_led_array* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %89

63:                                               ; preds = %43
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = load %struct.lp3952_led_array*, %struct.lp3952_led_array** %7, align 8
  %66 = call i32 @i2c_set_clientdata(%struct.i2c_client* %64, %struct.lp3952_led_array* %65)
  %67 = load %struct.lp3952_led_array*, %struct.lp3952_led_array** %7, align 8
  %68 = call i32 @lp3952_configure(%struct.lp3952_led_array* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %89

77:                                               ; preds = %63
  %78 = load %struct.lp3952_led_array*, %struct.lp3952_led_array** %7, align 8
  %79 = call i32 @lp3952_register_led_classdev(%struct.lp3952_led_array* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %89

88:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %82, %71, %53, %33, %15
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.lp3952_led_array* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lp3952_led_array*) #1

declare dso_local i32 @lp3952_configure(%struct.lp3952_led_array*) #1

declare dso_local i32 @lp3952_register_led_classdev(%struct.lp3952_led_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
