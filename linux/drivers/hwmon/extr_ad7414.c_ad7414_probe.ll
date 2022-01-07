; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ad7414.c_ad7414_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ad7414.c_ad7414_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device, i32 }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ad7414_data = type { i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_WORD_DATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"chip found\0A\00", align 1
@AD7414_REG_CONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"ad7414_probe unable to read config register.\0A\00", align 1
@ad7414_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ad7414_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7414_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ad7414_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %16 = load i32, i32* @I2C_FUNC_SMBUS_READ_WORD_DATA, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @i2c_check_functionality(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ad7414_data* @devm_kzalloc(%struct.device* %24, i32 16, i32 %25)
  store %struct.ad7414_data* %26, %struct.ad7414_data** %7, align 8
  %27 = load %struct.ad7414_data*, %struct.ad7414_data** %7, align 8
  %28 = icmp ne %struct.ad7414_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %23
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.ad7414_data*, %struct.ad7414_data** %7, align 8
  %35 = getelementptr inbounds %struct.ad7414_data, %struct.ad7414_data* %34, i32 0, i32 1
  store %struct.i2c_client* %33, %struct.i2c_client** %35, align 8
  %36 = load %struct.ad7414_data*, %struct.ad7414_data** %7, align 8
  %37 = getelementptr inbounds %struct.ad7414_data, %struct.ad7414_data* %36, i32 0, i32 0
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = call i32 @dev_info(%struct.device* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load i32, i32* @AD7414_REG_CONF, align 4
  %44 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = call i32 @dev_warn(%struct.device* %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %57

50:                                               ; preds = %32
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, -129
  store i32 %52, i32* %9, align 4
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load i32, i32* @AD7414_REG_CONF, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %47
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ad7414_data*, %struct.ad7414_data** %7, align 8
  %63 = load i32, i32* @ad7414_groups, align 4
  %64 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %58, i32 %61, %struct.ad7414_data* %62, i32 %63)
  store %struct.device* %64, %struct.device** %8, align 8
  %65 = load %struct.device*, %struct.device** %8, align 8
  %66 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %57, %29, %20
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.ad7414_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.ad7414_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
