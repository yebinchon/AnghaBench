; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm85.c_lm85_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm85.c_lm85_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LM85_REG_COMPANY = common dso_local global i32 0, align 4
@LM85_REG_VERSTEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Detecting device at 0x%02x with COMPANY: 0x%02x and VERSTEP: 0x%02x\0A\00", align 1
@LM85_COMPANY_NATIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"lm85c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"lm85b\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Found Winbond WPCD377I, ignoring\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"lm96000\00", align 1
@LM85_COMPANY_ANALOG_DEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"adm1027\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"adt7463\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"adt7468\00", align 1
@LM85_COMPANY_SMSC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"emc6d100\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"emc6d102\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"emc6d103\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"emc6d103s\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @lm85_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm85_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %18 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %19 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %92

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* @LM85_REG_COMPANY, align 4
  %27 = call i32 @lm85_read_value(%struct.i2c_client* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load i32, i32* @LM85_REG_VERSTEP, align 4
  %30 = call i32 @lm85_read_value(%struct.i2c_client* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %32, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @LM85_COMPANY_NATIONAL, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %24
  %41 = load i32, i32* %10, align 4
  switch i32 %41, label %55 [
    i32 130, label %42
    i32 131, label %43
    i32 129, label %44
    i32 128, label %44
  ]

42:                                               ; preds = %40
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %55

43:                                               ; preds = %40
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %55

44:                                               ; preds = %40, %40
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = call i32 @lm85_is_fake(%struct.i2c_client* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %92

54:                                               ; preds = %44
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %55

55:                                               ; preds = %40, %54, %43, %42
  br label %79

56:                                               ; preds = %24
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @LM85_COMPANY_ANALOG_DEV, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  switch i32 %61, label %65 [
    i32 142, label %62
    i32 141, label %63
    i32 140, label %63
    i32 139, label %64
    i32 138, label %64
  ]

62:                                               ; preds = %60
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %65

63:                                               ; preds = %60, %60
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %65

64:                                               ; preds = %60, %60
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %65

65:                                               ; preds = %60, %64, %63, %62
  br label %78

66:                                               ; preds = %56
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @LM85_COMPANY_SMSC, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  switch i32 %71, label %76 [
    i32 137, label %72
    i32 136, label %72
    i32 135, label %73
    i32 133, label %74
    i32 132, label %74
    i32 134, label %75
  ]

72:                                               ; preds = %70, %70
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %76

73:                                               ; preds = %70
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %76

74:                                               ; preds = %70, %70
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  br label %76

75:                                               ; preds = %70
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  br label %76

76:                                               ; preds = %70, %75, %74, %73, %72
  br label %77

77:                                               ; preds = %76, %66
  br label %78

78:                                               ; preds = %77, %65
  br label %79

79:                                               ; preds = %78, %55
  %80 = load i8*, i8** %8, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %92

85:                                               ; preds = %79
  %86 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %87 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* @I2C_NAME_SIZE, align 4
  %91 = call i32 @strlcpy(i32 %88, i8* %89, i32 %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %85, %82, %48, %21
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @lm85_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @lm85_is_fake(%struct.i2c_client*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
