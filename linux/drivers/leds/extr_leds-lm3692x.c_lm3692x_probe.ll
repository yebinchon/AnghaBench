; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3692x.c_lm3692x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3692x.c_lm3692x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm3692x_led = type { i32, i32, %struct.TYPE_2__, %struct.i2c_client*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm3692x_brightness_set = common dso_local global i32 0, align 4
@lm3692x_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm3692x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3692x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm3692x_led*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.lm3692x_led* @devm_kzalloc(i32* %9, i32 32, i32 %10)
  store %struct.lm3692x_led* %11, %struct.lm3692x_led** %6, align 8
  %12 = load %struct.lm3692x_led*, %struct.lm3692x_led** %6, align 8
  %13 = icmp ne %struct.lm3692x_led* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  %18 = load %struct.lm3692x_led*, %struct.lm3692x_led** %6, align 8
  %19 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %18, i32 0, i32 4
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.lm3692x_led*, %struct.lm3692x_led** %6, align 8
  %23 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %22, i32 0, i32 3
  store %struct.i2c_client* %21, %struct.i2c_client** %23, align 8
  %24 = load i32, i32* @lm3692x_brightness_set, align 4
  %25 = load %struct.lm3692x_led*, %struct.lm3692x_led** %6, align 8
  %26 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.lm3692x_led*, %struct.lm3692x_led** %6, align 8
  %32 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.lm3692x_led*, %struct.lm3692x_led** %6, align 8
  %35 = call i32 @i2c_set_clientdata(%struct.i2c_client* %33, %struct.lm3692x_led* %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %36, i32* @lm3692x_regmap_config)
  %38 = load %struct.lm3692x_led*, %struct.lm3692x_led** %6, align 8
  %39 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.lm3692x_led*, %struct.lm3692x_led** %6, align 8
  %41 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %17
  %46 = load %struct.lm3692x_led*, %struct.lm3692x_led** %6, align 8
  %47 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %70

55:                                               ; preds = %17
  %56 = load %struct.lm3692x_led*, %struct.lm3692x_led** %6, align 8
  %57 = call i32 @lm3692x_probe_dt(%struct.lm3692x_led* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %70

62:                                               ; preds = %55
  %63 = load %struct.lm3692x_led*, %struct.lm3692x_led** %6, align 8
  %64 = call i32 @lm3692x_init(%struct.lm3692x_led* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %67, %60, %45, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.lm3692x_led* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm3692x_led*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @lm3692x_probe_dt(%struct.lm3692x_led*) #1

declare dso_local i32 @lm3692x_init(%struct.lm3692x_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
