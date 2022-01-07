; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_g762_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_g762_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.g762_data = type { i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@g762_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @g762_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g762_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.g762_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %16 = call i32 @i2c_check_functionality(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %77

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.g762_data* @devm_kzalloc(%struct.device* %22, i32 16, i32 %23)
  store %struct.g762_data* %24, %struct.g762_data** %8, align 8
  %25 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %26 = icmp ne %struct.g762_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %77

30:                                               ; preds = %21
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %33 = call i32 @i2c_set_clientdata(%struct.i2c_client* %31, %struct.g762_data* %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %36 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %35, i32 0, i32 1
  store %struct.i2c_client* %34, %struct.i2c_client** %36, align 8
  %37 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %38 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %37, i32 0, i32 0
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @g762_fan_init(%struct.device* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %77

46:                                               ; preds = %30
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = call i32 @g762_of_clock_enable(%struct.i2c_client* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %77

53:                                               ; preds = %46
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = call i32 @g762_of_prop_import(%struct.i2c_client* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %77

60:                                               ; preds = %53
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = call i32 @g762_pdata_prop_import(%struct.i2c_client* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %77

67:                                               ; preds = %60
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.g762_data*, %struct.g762_data** %8, align 8
  %73 = load i32, i32* @g762_groups, align 4
  %74 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %68, i32 %71, %struct.g762_data* %72, i32 %73)
  store %struct.device* %74, %struct.device** %7, align 8
  %75 = load %struct.device*, %struct.device** %7, align 8
  %76 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %67, %65, %58, %51, %44, %27, %18
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.g762_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.g762_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @g762_fan_init(%struct.device*) #1

declare dso_local i32 @g762_of_clock_enable(%struct.i2c_client*) #1

declare dso_local i32 @g762_of_prop_import(%struct.i2c_client*) #1

declare dso_local i32 @g762_pdata_prop_import(%struct.i2c_client*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.g762_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
