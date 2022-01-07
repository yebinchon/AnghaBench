; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_lm95234_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_lm95234_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LM95234_REG_MAN_ID = common dso_local global i32 0, align 4
@NATSEMI_MAN_ID = common dso_local global i32 0, align 4
@LM95234_REG_CHIP_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"lm95233\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"lm95234\00", align 1
@LM95234_REG_STATUS = common dso_local global i32 0, align 4
@LM95234_REG_CONFIG = common dso_local global i32 0, align 4
@LM95234_REG_CONVRATE = common dso_local global i32 0, align 4
@LM95234_REG_REM_MODEL = common dso_local global i32 0, align 4
@LM95234_REG_REM_MODEL_STS = common dso_local global i32 0, align 4
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @lm95234_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm95234_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %6, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %21 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %22 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %131

27:                                               ; preds = %2
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load i32, i32* @LM95234_REG_MAN_ID, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @NATSEMI_MAN_ID, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %131

37:                                               ; preds = %27
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load i32, i32* @LM95234_REG_CHIP_ID, align 4
  %40 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  switch i32 %41, label %68 [
    i32 129, label %42
    i32 128, label %55
  ]

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 24
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 42
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 43
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %131

54:                                               ; preds = %48, %45, %42
  store i32 191, i32* %8, align 4
  store i32 249, i32* %9, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %71

55:                                               ; preds = %37
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 24
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 77
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 78
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %131

67:                                               ; preds = %61, %58, %55
  store i32 188, i32* %8, align 4
  store i32 225, i32* %9, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %71

68:                                               ; preds = %37
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %131

71:                                               ; preds = %67, %54
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = load i32, i32* @LM95234_REG_STATUS, align 4
  %74 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, 48
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %131

81:                                               ; preds = %71
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load i32, i32* @LM95234_REG_CONFIG, align 4
  %84 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %82, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %131

92:                                               ; preds = %81
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = load i32, i32* @LM95234_REG_CONVRATE, align 4
  %95 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %93, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, 252
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %131

102:                                              ; preds = %92
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = load i32, i32* @LM95234_REG_REM_MODEL, align 4
  %105 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %103, i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %9, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %131

113:                                              ; preds = %102
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = load i32, i32* @LM95234_REG_REM_MODEL_STS, align 4
  %116 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %114, i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %9, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load i32, i32* @ENODEV, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %131

124:                                              ; preds = %113
  %125 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %126 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** %13, align 8
  %129 = load i32, i32* @I2C_NAME_SIZE, align 4
  %130 = call i32 @strlcpy(i32 %127, i8* %128, i32 %129)
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %124, %121, %110, %99, %89, %78, %68, %64, %51, %34, %24
  %132 = load i32, i32* %3, align 4
  ret i32 %132
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
