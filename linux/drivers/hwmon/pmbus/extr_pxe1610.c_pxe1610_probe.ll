; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pxe1610.c_pxe1610_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pxe1610.c_pxe1610_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.pmbus_driver_info = type { i32 }

@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BLOCK_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PMBUS_PAGE = common dso_local global i32 0, align 4
@PMBUS_MFR_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to read PMBUS_MFR_ID\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"XP\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"MFR_ID unrecognized\0A\00", align 1
@pxe1610_info = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pxe1610_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxe1610_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pmbus_driver_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE_DATA, align 4
  %19 = load i32, i32* @I2C_FUNC_SMBUS_READ_WORD_DATA, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @I2C_FUNC_SMBUS_READ_BLOCK_DATA, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @i2c_check_functionality(i32 %17, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %69

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @PMBUS_PAGE, align 4
  %31 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %29, i32 %30, i32 0)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load i32, i32* @PMBUS_MFR_ID, align 4
  %34 = call i32 @i2c_smbus_read_block_data(%struct.i2c_client* %32, i32 %33, i32* %14)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %69

42:                                               ; preds = %28
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 2
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = call i64 @strncmp(i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45, %42
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %69

54:                                               ; preds = %45
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.pmbus_driver_info* @devm_kmemdup(i32* %56, i32* @pxe1610_info, i32 4, i32 %57)
  store %struct.pmbus_driver_info* %58, %struct.pmbus_driver_info** %6, align 8
  %59 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %60 = icmp ne %struct.pmbus_driver_info* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %69

64:                                               ; preds = %54
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %67 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %68 = call i32 @pmbus_do_probe(%struct.i2c_client* %65, %struct.i2c_device_id* %66, %struct.pmbus_driver_info* %67)
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %64, %61, %48, %37, %25
  %70 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #2

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #2

declare dso_local i32 @i2c_smbus_read_block_data(%struct.i2c_client*, i32, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i64 @strncmp(i32*, i8*, i32) #2

declare dso_local %struct.pmbus_driver_info* @devm_kmemdup(i32*, i32*, i32, i32) #2

declare dso_local i32 @pmbus_do_probe(%struct.i2c_client*, %struct.i2c_device_id*, %struct.pmbus_driver_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
