; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3697.c_lm3697_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3697.c_lm3697_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm3697 = type { i32, i32*, %struct.i2c_client*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"LEDs are not defined in device tree!\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@leds = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm3697_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm3697_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3697_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm3697*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call i32 @device_get_child_node_count(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %77

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load %struct.lm3697*, %struct.lm3697** %6, align 8
  %24 = load i32, i32* @leds, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @struct_size(%struct.lm3697* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.lm3697* @devm_kzalloc(i32* %22, i32 %26, i32 %27)
  store %struct.lm3697* %28, %struct.lm3697** %6, align 8
  %29 = load %struct.lm3697*, %struct.lm3697** %6, align 8
  %30 = icmp ne %struct.lm3697* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %77

34:                                               ; preds = %20
  %35 = load %struct.lm3697*, %struct.lm3697** %6, align 8
  %36 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %35, i32 0, i32 3
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load %struct.lm3697*, %struct.lm3697** %6, align 8
  %40 = call i32 @i2c_set_clientdata(%struct.i2c_client* %38, %struct.lm3697* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load %struct.lm3697*, %struct.lm3697** %6, align 8
  %43 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %42, i32 0, i32 2
  store %struct.i2c_client* %41, %struct.i2c_client** %43, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load %struct.lm3697*, %struct.lm3697** %6, align 8
  %47 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %48, i32* @lm3697_regmap_config)
  %50 = load %struct.lm3697*, %struct.lm3697** %6, align 8
  %51 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.lm3697*, %struct.lm3697** %6, align 8
  %53 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %34
  %58 = load %struct.lm3697*, %struct.lm3697** %6, align 8
  %59 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i32*, i8*, ...) @dev_err(i32* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %77

67:                                               ; preds = %34
  %68 = load %struct.lm3697*, %struct.lm3697** %6, align 8
  %69 = call i32 @lm3697_probe_dt(%struct.lm3697* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %77

74:                                               ; preds = %67
  %75 = load %struct.lm3697*, %struct.lm3697** %6, align 8
  %76 = call i32 @lm3697_init(%struct.lm3697* %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %72, %57, %31, %14
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @device_get_child_node_count(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.lm3697* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.lm3697*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm3697*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @lm3697_probe_dt(%struct.lm3697*) #1

declare dso_local i32 @lm3697_init(%struct.lm3697*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
