; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm78.c_lm78_i2c_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm78.c_lm78_i2c_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }
%struct.lm78_data = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LM78_REG_CONFIG = common dso_local global i32 0, align 4
@LM78_REG_I2C_ADDR = common dso_local global i32 0, align 4
@LM78_REG_CHIPID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lm78\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"lm79\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Device at 0x%02x appears to be the same as ISA device\0A\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @lm78_i2c_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm78_i2c_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lm78_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %11 = call %struct.lm78_data* (...) @lm78_data_if_isa()
  store %struct.lm78_data* %11, %struct.lm78_data** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %9, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %19 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %20 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %108

25:                                               ; preds = %2
  %26 = load %struct.lm78_data*, %struct.lm78_data** %7, align 8
  %27 = icmp ne %struct.lm78_data* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.lm78_data*, %struct.lm78_data** %7, align 8
  %30 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load i32, i32* @LM78_REG_CONFIG, align 4
  %35 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %33, i32 %34)
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load i32, i32* @LM78_REG_I2C_ADDR, align 4
  %41 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %32
  br label %98

45:                                               ; preds = %38
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %46, i32 79)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 163
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 92
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %45
  br label %98

54:                                               ; preds = %50
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = load i32, i32* @LM78_REG_CHIPID, align 4
  %57 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 32
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 64
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %60, %54
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %74

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 254
  %70 = icmp eq i32 %69, 192
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %73

72:                                               ; preds = %67
  br label %98

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73, %66
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @lm78_alias_detect(%struct.i2c_client* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %81 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @dev_dbg(i32* %81, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %98

84:                                               ; preds = %74
  %85 = load %struct.lm78_data*, %struct.lm78_data** %7, align 8
  %86 = icmp ne %struct.lm78_data* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.lm78_data*, %struct.lm78_data** %7, align 8
  %89 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  br label %91

91:                                               ; preds = %87, %84
  %92 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %93 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* @I2C_NAME_SIZE, align 4
  %97 = call i32 @strlcpy(i32 %94, i8* %95, i32 %96)
  store i32 0, i32* %3, align 4
  br label %108

98:                                               ; preds = %79, %72, %53, %44
  %99 = load %struct.lm78_data*, %struct.lm78_data** %7, align 8
  %100 = icmp ne %struct.lm78_data* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load %struct.lm78_data*, %struct.lm78_data** %7, align 8
  %103 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  br label %105

105:                                              ; preds = %101, %98
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %91, %22
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.lm78_data* @lm78_data_if_isa(...) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i64 @lm78_alias_detect(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
