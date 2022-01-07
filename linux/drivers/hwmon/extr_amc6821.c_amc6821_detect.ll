; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_amc6821_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_amc6821_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"amc6821_detect called.\0A\00", align 1
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"amc6821: I2C bus doesn't support byte mode, skipping.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@AMC6821_REG_DEV_ID = common dso_local global i32 0, align 4
@AMC6821_REG_COMP_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"amc6821: detection failed at 0x%02x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"amc6821: chip found at 0x%02x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"amc6821\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @amc6821_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amc6821_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %20 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %21 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %24, i32 0, i32 0
  %26 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %25, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %79

29:                                               ; preds = %2
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load i32, i32* @AMC6821_REG_DEV_ID, align 4
  %32 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load i32, i32* @AMC6821_REG_COMP_ID, align 4
  %35 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 33
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 73
  br i1 %40, label %41, label %48

41:                                               ; preds = %38, %29
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %43 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %79

48:                                               ; preds = %38
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load i32, i32* @AMC6821_REG_DEV_ID, align 4
  %51 = or i32 128, %50
  %52 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %49, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load i32, i32* @AMC6821_REG_COMP_ID, align 4
  %55 = or i32 128, %54
  %56 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %53, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 33
  br i1 %58, label %62, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 73
  br i1 %61, label %62, label %69

62:                                               ; preds = %59, %48
  %63 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %79

69:                                               ; preds = %59
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %71 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %70, i32 0, i32 0
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @dev_info(i32* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %75 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @I2C_NAME_SIZE, align 4
  %78 = call i32 @strlcpy(i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %69, %62, %41, %23
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
