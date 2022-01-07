; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7802.c_nct7802_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7802.c_nct7802_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_board_info = type { i32 }

@REG_BANK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@REG_VENDOR_ID = common dso_local global i32 0, align 4
@REG_CHIP_ID = common dso_local global i32 0, align 4
@REG_VERSION_ID = common dso_local global i32 0, align 4
@REG_TEMP_LSB = common dso_local global i32 0, align 4
@REG_TEMP_PECI_LSB = common dso_local global i32 0, align 4
@REG_VOLTAGE_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"nct7802\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @nct7802_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct7802_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = load i32, i32* @REG_BANK, align 4
  %9 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %91

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load i32, i32* @REG_VENDOR_ID, align 4
  %18 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 80
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %91

24:                                               ; preds = %15
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* @REG_CHIP_ID, align 4
  %27 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 195
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %91

33:                                               ; preds = %24
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i32, i32* @REG_VERSION_ID, align 4
  %36 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 240
  %42 = icmp ne i32 %41, 32
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %33
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %91

46:                                               ; preds = %39
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load i32, i32* @REG_TEMP_LSB, align 4
  %49 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 31
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %46
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %91

59:                                               ; preds = %52
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load i32, i32* @REG_TEMP_PECI_LSB, align 4
  %62 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 63
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65, %59
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %91

72:                                               ; preds = %65
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = load i32, i32* @REG_VOLTAGE_LOW, align 4
  %75 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, 63
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %72
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %91

85:                                               ; preds = %78
  %86 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %87 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @I2C_NAME_SIZE, align 4
  %90 = call i32 @strlcpy(i32 %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %85, %82, %69, %56, %43, %30, %21, %12
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
