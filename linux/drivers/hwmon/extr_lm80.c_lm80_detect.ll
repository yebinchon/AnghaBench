; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm80.c_lm80_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm80.c_lm80_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LM80_REG_ALARM2 = common dso_local global i32 0, align 4
@LM80_REG_CONFIG = common dso_local global i32 0, align 4
@LM96080_REG_MAN_ID = common dso_local global i32 0, align 4
@LM96080_REG_DEV_ID = common dso_local global i32 0, align 4
@LM96080_REG_CONV_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"lm96080\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"lm80\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @lm80_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm80_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %6, align 8
  store i8* null, i8** %11, align 8
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %17 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %102

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @LM80_REG_ALARM2, align 4
  %25 = call i32 @lm80_read_value(%struct.i2c_client* %23, i32 %24)
  %26 = and i32 %25, 192
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @LM80_REG_CONFIG, align 4
  %31 = call i32 @lm80_read_value(%struct.i2c_client* %29, i32 %30)
  %32 = and i32 %31, 128
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %102

37:                                               ; preds = %28
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load i32, i32* @LM96080_REG_MAN_ID, align 4
  %40 = call i32 @lm80_read_value(%struct.i2c_client* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32, i32* @LM96080_REG_DEV_ID, align 4
  %43 = call i32 @lm80_read_value(%struct.i2c_client* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %59

46:                                               ; preds = %37
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 8
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load i32, i32* @LM96080_REG_CONV_RATE, align 4
  %52 = call i32 @lm80_read_value(%struct.i2c_client* %50, i32 %51)
  %53 = and i32 %52, 254
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %102

58:                                               ; preds = %49
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %95

59:                                               ; preds = %46, %37
  store i32 42, i32* %7, align 4
  br label %60

60:                                               ; preds = %91, %59
  %61 = load i32, i32* %7, align 4
  %62 = icmp sle i32 %61, 61
  br i1 %62, label %63, label %94

63:                                               ; preds = %60
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 64
  %70 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %67, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %87, label %73

73:                                               ; preds = %63
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 128
  %77 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %74, i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 192
  %84 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %81, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %80, %73, %63
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %102

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %60

94:                                               ; preds = %60
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %95

95:                                               ; preds = %94, %58
  %96 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %97 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %11, align 8
  %100 = load i32, i32* @I2C_NAME_SIZE, align 4
  %101 = call i32 @strlcpy(i32 %98, i8* %99, i32 %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %95, %87, %55, %34, %19
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @lm80_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
