; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1619.c_max1619_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1619.c_max1619_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MAX1619_REG_R_CONFIG = common dso_local global i32 0, align 4
@MAX1619_REG_R_CONVRATE = common dso_local global i32 0, align 4
@MAX1619_REG_R_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MAX1619 detection failed at 0x%02x\0A\00", align 1
@MAX1619_REG_R_MAN_ID = common dso_local global i32 0, align 4
@MAX1619_REG_R_CHIP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Unsupported chip (man_id=0x%02X, chip_id=0x%02X).\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"max1619\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @max1619_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1619_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %6, align 8
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %17 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %77

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @MAX1619_REG_R_CONFIG, align 4
  %25 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load i32, i32* @MAX1619_REG_R_CONVRATE, align 4
  %28 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @MAX1619_REG_R_STATUS, align 4
  %31 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 3
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 7
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 97
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38, %35, %22
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %43, i32 0, i32 0
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_dbg(i32* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %77

51:                                               ; preds = %38
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = load i32, i32* @MAX1619_REG_R_MAN_ID, align 4
  %54 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = load i32, i32* @MAX1619_REG_R_CHIP_ID, align 4
  %57 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 77
  br i1 %59, label %63, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 4
  br i1 %62, label %63, label %71

63:                                               ; preds = %60, %51
  %64 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %65 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @dev_info(i32* %65, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %77

71:                                               ; preds = %60
  %72 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %73 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @I2C_NAME_SIZE, align 4
  %76 = call i32 @strlcpy(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %63, %42, %19
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
