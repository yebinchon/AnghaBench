; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3601x.c_lm3601x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3601x.c_lm3601x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lm3601x_led = type { i32, i32, %struct.i2c_client* }
%struct.fwnode_handle = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@lm3601x_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @lm3601x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3601x_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.lm3601x_led*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.lm3601x_led* @devm_kzalloc(i32* %8, i32 16, i32 %9)
  store %struct.lm3601x_led* %10, %struct.lm3601x_led** %4, align 8
  %11 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %12 = icmp ne %struct.lm3601x_led* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %57

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %19 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %18, i32 0, i32 2
  store %struct.i2c_client* %17, %struct.i2c_client** %19, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.lm3601x_led* %21)
  %23 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %24 = call i32 @lm3601x_parse_node(%struct.lm3601x_led* %23, %struct.fwnode_handle** %5)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %57

30:                                               ; preds = %16
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %31, i32* @lm3601x_regmap)
  %33 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %34 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %36 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %30
  %41 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %42 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %57

50:                                               ; preds = %30
  %51 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %52 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %51, i32 0, i32 0
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %55 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %56 = call i32 @lm3601x_register_leds(%struct.lm3601x_led* %54, %struct.fwnode_handle* %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %50, %40, %27, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.lm3601x_led* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm3601x_led*) #1

declare dso_local i32 @lm3601x_parse_node(%struct.lm3601x_led*, %struct.fwnode_handle**) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lm3601x_register_leds(%struct.lm3601x_led*, %struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
