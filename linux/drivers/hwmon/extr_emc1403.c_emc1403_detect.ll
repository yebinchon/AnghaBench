; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc1403.c_emc1403_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc1403.c_emc1403_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_board_info = type { i32 }

@THERMAL_SMSC_ID_REG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@THERMAL_PID_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"emc1402\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"emc1403\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"emc1422\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"emc1423\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"emc1404\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"emc1424\00", align 1
@THERMAL_REVISION_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @emc1403_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emc1403_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = load i32, i32* @THERMAL_SMSC_ID_REG, align 4
  %9 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 93
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load i32, i32* @THERMAL_PID_REG, align 4
  %18 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %56 [
    i32 32, label %20
    i32 33, label %26
    i32 34, label %32
    i32 35, label %38
    i32 37, label %44
    i32 39, label %50
  ]

20:                                               ; preds = %15
  %21 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @I2C_NAME_SIZE, align 4
  %25 = call i32 @strlcpy(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %59

26:                                               ; preds = %15
  %27 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @I2C_NAME_SIZE, align 4
  %31 = call i32 @strlcpy(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %59

32:                                               ; preds = %15
  %33 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @I2C_NAME_SIZE, align 4
  %37 = call i32 @strlcpy(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %59

38:                                               ; preds = %15
  %39 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @I2C_NAME_SIZE, align 4
  %43 = call i32 @strlcpy(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  br label %59

44:                                               ; preds = %15
  %45 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %46 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @I2C_NAME_SIZE, align 4
  %49 = call i32 @strlcpy(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  br label %59

50:                                               ; preds = %15
  %51 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %52 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @I2C_NAME_SIZE, align 4
  %55 = call i32 @strlcpy(i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  br label %59

56:                                               ; preds = %15
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %72

59:                                               ; preds = %50, %44, %38, %32, %26, %20
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load i32, i32* @THERMAL_REVISION_REG, align 4
  %62 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = icmp sgt i32 %66, 4
  br i1 %67, label %68, label %71

68:                                               ; preds = %65, %59
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %68, %56, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
