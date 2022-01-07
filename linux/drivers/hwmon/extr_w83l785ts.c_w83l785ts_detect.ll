; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83l785ts.c_w83l785ts_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83l785ts.c_w83l785ts_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@W83L785TS_REG_CONFIG = common dso_local global i32 0, align 4
@W83L785TS_REG_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"W83L785TS-S detection failed at 0x%02x\0A\00", align 1
@W83L785TS_REG_MAN_ID1 = common dso_local global i32 0, align 4
@W83L785TS_REG_MAN_ID2 = common dso_local global i32 0, align 4
@W83L785TS_REG_CHIP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Unsupported chip (man_id=0x%04X, chip_id=0x%02X)\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"w83l785ts\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @w83l785ts_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83l785ts_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %6, align 8
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %14 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %71

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load i32, i32* @W83L785TS_REG_CONFIG, align 4
  %22 = call i32 @w83l785ts_read_value(%struct.i2c_client* %20, i32 %21, i32 0)
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load i32, i32* @W83L785TS_REG_TYPE, align 4
  %28 = call i32 @w83l785ts_read_value(%struct.i2c_client* %26, i32 %27, i32 0)
  %29 = and i32 %28, 252
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25, %19
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %32, i32 0, i32 0
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %25
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32, i32* @W83L785TS_REG_MAN_ID1, align 4
  %43 = call i32 @w83l785ts_read_value(%struct.i2c_client* %41, i32 %42, i32 0)
  %44 = shl i32 %43, 8
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load i32, i32* @W83L785TS_REG_MAN_ID2, align 4
  %47 = call i32 @w83l785ts_read_value(%struct.i2c_client* %45, i32 %46, i32 0)
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %7, align 4
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load i32, i32* @W83L785TS_REG_CHIP_ID, align 4
  %51 = call i32 @w83l785ts_read_value(%struct.i2c_client* %49, i32 %50, i32 0)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 23715
  br i1 %53, label %57, label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 112
  br i1 %56, label %57, label %65

57:                                               ; preds = %54, %40
  %58 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %59 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %71

65:                                               ; preds = %54
  %66 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %67 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @I2C_NAME_SIZE, align 4
  %70 = call i32 @strlcpy(i32 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %57, %31, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @w83l785ts_read_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
