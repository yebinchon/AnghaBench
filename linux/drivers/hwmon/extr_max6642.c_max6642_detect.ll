; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6642.c_max6642_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6642.c_max6642_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MAX6642_REG_R_MAN_ID = common dso_local global i32 0, align 4
@MAX6642_REG_R_CONFIG = common dso_local global i32 0, align 4
@MAX6642_REG_R_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"max6642\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @max6642_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6642_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
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
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
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
  br label %88

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load i32, i32* @MAX6642_REG_R_MAN_ID, align 4
  %23 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 77
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %88

29:                                               ; preds = %20
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %30, i32 4)
  %32 = icmp ne i32 %31, 77
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 6)
  %36 = icmp ne i32 %35, 77
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 255)
  %40 = icmp ne i32 %39, 77
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %33, %29
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %88

44:                                               ; preds = %37
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load i32, i32* @MAX6642_REG_R_CONFIG, align 4
  %47 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 15
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %88

54:                                               ; preds = %44
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %55, i32 4)
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %60, i32 6)
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %65, i32 255)
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64, %59, %54
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %88

72:                                               ; preds = %64
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = load i32, i32* @MAX6642_REG_R_STATUS, align 4
  %75 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 43
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %88

82:                                               ; preds = %72
  %83 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %84 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @I2C_NAME_SIZE, align 4
  %87 = call i32 @strlcpy(i32 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %82, %79, %69, %51, %41, %26, %17
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
