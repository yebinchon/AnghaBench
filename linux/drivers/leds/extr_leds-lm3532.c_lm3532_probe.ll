; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3532.c_lm3532_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3532.c_lm3532_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm3532_data = type { i32, i32, i32*, %struct.i2c_client* }

@.str = private unnamed_addr constant [37 x i8] c"LEDs are not defined in device tree!\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@leds = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm3532_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to parse node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm3532_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3532_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm3532_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call i32 @device_get_child_node_count(i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %79

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load %struct.lm3532_data*, %struct.lm3532_data** %6, align 8
  %24 = load i32, i32* @leds, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @struct_size(%struct.lm3532_data* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.lm3532_data* @devm_kzalloc(i32* %22, i32 %26, i32 %27)
  store %struct.lm3532_data* %28, %struct.lm3532_data** %6, align 8
  %29 = load %struct.lm3532_data*, %struct.lm3532_data** %6, align 8
  %30 = icmp eq %struct.lm3532_data* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %79

34:                                               ; preds = %20
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.lm3532_data*, %struct.lm3532_data** %6, align 8
  %37 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %36, i32 0, i32 3
  store %struct.i2c_client* %35, %struct.i2c_client** %37, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load %struct.lm3532_data*, %struct.lm3532_data** %6, align 8
  %41 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %42, i32* @lm3532_regmap_config)
  %44 = load %struct.lm3532_data*, %struct.lm3532_data** %6, align 8
  %45 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.lm3532_data*, %struct.lm3532_data** %6, align 8
  %47 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %34
  %52 = load %struct.lm3532_data*, %struct.lm3532_data** %6, align 8
  %53 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %79

61:                                               ; preds = %34
  %62 = load %struct.lm3532_data*, %struct.lm3532_data** %6, align 8
  %63 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %62, i32 0, i32 0
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load %struct.lm3532_data*, %struct.lm3532_data** %6, align 8
  %67 = call i32 @i2c_set_clientdata(%struct.i2c_client* %65, %struct.lm3532_data* %66)
  %68 = load %struct.lm3532_data*, %struct.lm3532_data** %6, align 8
  %69 = call i32 @lm3532_parse_node(%struct.lm3532_data* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %79

77:                                               ; preds = %61
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %72, %51, %31, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @device_get_child_node_count(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.lm3532_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.lm3532_data*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm3532_data*) #1

declare dso_local i32 @lm3532_parse_node(%struct.lm3532_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
