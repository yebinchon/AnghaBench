; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83l786ng.c_w83l786ng_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83l786ng.c_w83l786ng_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@W83L786NG_REG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"W83L786NG detection failed at 0x%02x\0A\00", align 1
@W83L786NG_REG_MAN_ID1 = common dso_local global i32 0, align 4
@W83L786NG_REG_MAN_ID2 = common dso_local global i32 0, align 4
@W83L786NG_REG_CHIP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Unsupported chip (man_id=0x%04X, chip_id=0x%02X)\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"w83l786ng\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @w83l786ng_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83l786ng_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
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
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load i32, i32* @W83L786NG_REG_CONFIG, align 4
  %22 = call i32 @w83l786ng_read_value(%struct.i2c_client* %20, i32 %21)
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %26, i32 0, i32 0
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %65

34:                                               ; preds = %19
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @W83L786NG_REG_MAN_ID1, align 4
  %37 = call i32 @w83l786ng_read_value(%struct.i2c_client* %35, i32 %36)
  %38 = shl i32 %37, 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load i32, i32* @W83L786NG_REG_MAN_ID2, align 4
  %41 = call i32 @w83l786ng_read_value(%struct.i2c_client* %39, i32 %40)
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %7, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load i32, i32* @W83L786NG_REG_CHIP_ID, align 4
  %45 = call i32 @w83l786ng_read_value(%struct.i2c_client* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 23715
  br i1 %47, label %51, label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 128
  br i1 %50, label %51, label %59

51:                                               ; preds = %48, %34
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %53, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %65

59:                                               ; preds = %48
  %60 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %61 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @I2C_NAME_SIZE, align 4
  %64 = call i32 @strlcpy(i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %51, %25, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @w83l786ng_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
