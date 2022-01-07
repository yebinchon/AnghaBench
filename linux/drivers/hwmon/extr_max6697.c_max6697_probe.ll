; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6697.c_max6697_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6697.c_max6697_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device, %struct.i2c_adapter* }
%struct.device = type { i64 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max6697_data = type { i32, i32, %struct.i2c_client*, i32* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max6697_chip_data = common dso_local global i32* null, align 8
@max6697_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max6697_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6697_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.max6697_data*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %17 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %18 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %83

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.max6697_data* @devm_kzalloc(%struct.device* %24, i32 24, i32 %25)
  store %struct.max6697_data* %26, %struct.max6697_data** %8, align 8
  %27 = load %struct.max6697_data*, %struct.max6697_data** %8, align 8
  %28 = icmp ne %struct.max6697_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %83

32:                                               ; preds = %23
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = call i64 @of_device_get_match_data(%struct.device* %40)
  %42 = trunc i64 %41 to i32
  %43 = load %struct.max6697_data*, %struct.max6697_data** %8, align 8
  %44 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %51

45:                                               ; preds = %32
  %46 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %47 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.max6697_data*, %struct.max6697_data** %8, align 8
  %50 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %45, %38
  %52 = load i32*, i32** @max6697_chip_data, align 8
  %53 = load %struct.max6697_data*, %struct.max6697_data** %8, align 8
  %54 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load %struct.max6697_data*, %struct.max6697_data** %8, align 8
  %59 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %58, i32 0, i32 3
  store i32* %57, i32** %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load %struct.max6697_data*, %struct.max6697_data** %8, align 8
  %62 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %61, i32 0, i32 2
  store %struct.i2c_client* %60, %struct.i2c_client** %62, align 8
  %63 = load %struct.max6697_data*, %struct.max6697_data** %8, align 8
  %64 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %63, i32 0, i32 1
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.max6697_data*, %struct.max6697_data** %8, align 8
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = call i32 @max6697_init_chip(%struct.max6697_data* %66, %struct.i2c_client* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %83

73:                                               ; preds = %51
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.max6697_data*, %struct.max6697_data** %8, align 8
  %79 = load i32, i32* @max6697_groups, align 4
  %80 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %74, i32 %77, %struct.max6697_data* %78, i32 %79)
  store %struct.device* %80, %struct.device** %9, align 8
  %81 = load %struct.device*, %struct.device** %9, align 8
  %82 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %73, %71, %29, %20
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.max6697_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @max6697_init_chip(%struct.max6697_data*, %struct.i2c_client*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.max6697_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
