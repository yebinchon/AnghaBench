; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lm63_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lm63_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LM63_REG_MAN_ID = common dso_local global i32 0, align 4
@LM63_REG_CHIP_ID = common dso_local global i32 0, align 4
@LM63_REG_CONFIG1 = common dso_local global i32 0, align 4
@LM63_REG_CONFIG2 = common dso_local global i32 0, align 4
@LM63_REG_ALERT_STATUS = common dso_local global i32 0, align 4
@LM63_REG_ALERT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Unsupported chip (man_id=0x%02X, chip_id=0x%02X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"lm63\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"lm64\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"lm96163\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @lm63_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm63_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
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
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %6, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %13, align 4
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %21 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %22 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %117

27:                                               ; preds = %2
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load i32, i32* @LM63_REG_MAN_ID, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load i32, i32* @LM63_REG_CHIP_ID, align 4
  %33 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i32, i32* @LM63_REG_CONFIG1, align 4
  %36 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @LM63_REG_CONFIG2, align 4
  %39 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load i32, i32* @LM63_REG_ALERT_STATUS, align 4
  %42 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load i32, i32* @LM63_REG_ALERT_MASK, align 4
  %45 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %64, label %48

48:                                               ; preds = %27
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 24
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, 248
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, 32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %61, 164
  %63 = icmp ne i32 %62, 164
  br i1 %63, label %64, label %72

64:                                               ; preds = %60, %56, %52, %48, %27
  %65 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %66 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @dev_dbg(i32* %66, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %117

72:                                               ; preds = %60
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 65
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %76, 76
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %80 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @I2C_NAME_SIZE, align 4
  %83 = call i32 @strlcpy(i32 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %116

84:                                               ; preds = %75, %72
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 81
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load i32, i32* %13, align 4
  %89 = icmp eq i32 %88, 24
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = icmp eq i32 %91, 78
  br i1 %92, label %93, label %99

93:                                               ; preds = %90, %87
  %94 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %95 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @I2C_NAME_SIZE, align 4
  %98 = call i32 @strlcpy(i32 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %115

99:                                               ; preds = %90, %84
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 73
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i32, i32* %13, align 4
  %104 = icmp eq i32 %103, 76
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %107 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @I2C_NAME_SIZE, align 4
  %110 = call i32 @strlcpy(i32 %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %114

111:                                              ; preds = %102, %99
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %117

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %93
  br label %116

116:                                              ; preds = %115, %78
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %111, %64, %24
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
