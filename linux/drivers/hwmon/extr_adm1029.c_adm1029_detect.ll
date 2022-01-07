; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1029.c_adm1029_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1029.c_adm1029_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ADM1029_REG_MAN_ID = common dso_local global i32 0, align 4
@ADM1029_REG_CHIP_ID = common dso_local global i32 0, align 4
@ADM1029_REG_TEMP_DEVICES_INSTALLED = common dso_local global i32 0, align 4
@ADM1029_REG_NB_FAN_SUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unknown major revision %x, please let us know\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"adm1029\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @adm1029_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1029_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %6, align 8
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %15 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %16 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load i32, i32* @ADM1029_REG_MAN_ID, align 4
  %24 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* @ADM1029_REG_CHIP_ID, align 4
  %27 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load i32, i32* @ADM1029_REG_TEMP_DEVICES_INSTALLED, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load i32, i32* @ADM1029_REG_NB_FAN_SUPPORT, align 4
  %33 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 65
  br i1 %35, label %43, label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 249
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 3
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %36, %21
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %61

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 240
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %61

55:                                               ; preds = %46
  %56 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %57 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @I2C_NAME_SIZE, align 4
  %60 = call i32 @strlcpy(i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %50, %43, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
