; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm83.c_lm83_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm83.c_lm83_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LM83_REG_R_STATUS1 = common dso_local global i32 0, align 4
@LM83_REG_R_STATUS2 = common dso_local global i32 0, align 4
@LM83_REG_R_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"LM83 detection failed at 0x%02x\0A\00", align 1
@LM83_REG_R_MAN_ID = common dso_local global i32 0, align 4
@LM83_REG_R_CHIP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"lm83\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lm82\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Unsupported chip (man_id=0x%02X, chip_id=0x%02X)\0A\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @lm83_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm83_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %6, align 8
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %14 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %15 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %78

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load i32, i32* @LM83_REG_R_STATUS1, align 4
  %23 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %21, i32 %22)
  %24 = and i32 %23, 168
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load i32, i32* @LM83_REG_R_STATUS2, align 4
  %29 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %27, i32 %28)
  %30 = and i32 %29, 72
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load i32, i32* @LM83_REG_R_CONFIG, align 4
  %35 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %33, i32 %34)
  %36 = and i32 %35, 65
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32, %26, %20
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %39, i32 0, i32 0
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %78

47:                                               ; preds = %32
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load i32, i32* @LM83_REG_R_MAN_ID, align 4
  %50 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %78

56:                                               ; preds = %47
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = load i32, i32* @LM83_REG_R_CHIP_ID, align 4
  %59 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  switch i32 %60, label %63 [
    i32 3, label %61
    i32 1, label %62
  ]

61:                                               ; preds = %56
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %71

62:                                               ; preds = %56
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %71

63:                                               ; preds = %56
  %64 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %65 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @dev_info(i32* %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %78

71:                                               ; preds = %62, %61
  %72 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %73 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* @I2C_NAME_SIZE, align 4
  %77 = call i32 @strlcpy(i32 %74, i8* %75, i32 %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %63, %53, %38, %17
  %79 = load i32, i32* %3, align 4
  ret i32 %79
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
