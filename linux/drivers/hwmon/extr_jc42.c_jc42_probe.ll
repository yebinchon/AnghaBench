; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_jc42.c_jc42_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_jc42.c_jc42_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.jc42_data = type { i32, i32, i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@JC42_REG_CAP = common dso_local global i32 0, align 4
@JC42_CAP_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"smbus-timeout-disable\00", align 1
@JC42_REG_SMBUS = common dso_local global i32 0, align 4
@SMBUS_STMOUT = common dso_local global i32 0, align 4
@JC42_REG_CONFIG = common dso_local global i32 0, align 4
@JC42_CFG_SHUTDOWN = common dso_local global i32 0, align 4
@jc42_chip_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @jc42_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jc42_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.jc42_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.jc42_data* @devm_kzalloc(%struct.device* %14, i32 24, i32 %15)
  store %struct.jc42_data* %16, %struct.jc42_data** %8, align 8
  %17 = load %struct.jc42_data*, %struct.jc42_data** %8, align 8
  %18 = icmp ne %struct.jc42_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %104

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.jc42_data*, %struct.jc42_data** %8, align 8
  %25 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %24, i32 0, i32 4
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.jc42_data*, %struct.jc42_data** %8, align 8
  %28 = call i32 @i2c_set_clientdata(%struct.i2c_client* %26, %struct.jc42_data* %27)
  %29 = load %struct.jc42_data*, %struct.jc42_data** %8, align 8
  %30 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %29, i32 0, i32 3
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load i32, i32* @JC42_REG_CAP, align 4
  %34 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  br label %104

39:                                               ; preds = %22
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @JC42_CAP_RANGE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.jc42_data*, %struct.jc42_data** %8, align 8
  %48 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i64 @device_property_read_bool(%struct.device* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %39
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load i32, i32* @JC42_REG_SMBUS, align 4
  %55 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %3, align 4
  br label %104

60:                                               ; preds = %52
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = load i32, i32* @JC42_REG_SMBUS, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @SMBUS_STMOUT, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %61, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %60, %39
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load i32, i32* @JC42_REG_CONFIG, align 4
  %70 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %104

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.jc42_data*, %struct.jc42_data** %8, align 8
  %78 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @JC42_CFG_SHUTDOWN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %75
  %84 = load i32, i32* @JC42_CFG_SHUTDOWN, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = load i32, i32* @JC42_REG_CONFIG, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %83, %75
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.jc42_data*, %struct.jc42_data** %8, align 8
  %95 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.jc42_data*, %struct.jc42_data** %8, align 8
  %101 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %96, i32 %99, %struct.jc42_data* %100, i32* @jc42_chip_info, i32* null)
  store %struct.device* %101, %struct.device** %7, align 8
  %102 = load %struct.device*, %struct.device** %7, align 8
  %103 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %102)
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %92, %73, %58, %37, %19
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.jc42_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.jc42_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i32, %struct.jc42_data*, i32*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
