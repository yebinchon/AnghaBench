; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_fschmd_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_fschmd_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@FSCHMD_REG_IDENT_0 = common dso_local global i32 0, align 4
@FSCHMD_REG_IDENT_1 = common dso_local global i32 0, align 4
@FSCHMD_REG_IDENT_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PEG\00", align 1
@fscpos = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"HER\00", align 1
@fscher = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"SCY\00", align 1
@fscscy = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"HRC\00", align 1
@fschrc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"HMD\00", align 1
@fschmd = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"HDS\00", align 1
@fschds = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"SYL\00", align 1
@fscsyl = common dso_local global i32 0, align 4
@fschmd_id = common dso_local global %struct.TYPE_2__* null, align 8
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @fschmd_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fschmd_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca [4 x i8], align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %7, align 8
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %14 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %95

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load i32, i32* @FSCHMD_REG_IDENT_0, align 4
  %22 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %20, i32 %21)
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8 %22, i8* %23, align 1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load i32, i32* @FSCHMD_REG_IDENT_1, align 4
  %26 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %24, i32 %25)
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  store i8 %26, i8* %27, align 1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load i32, i32* @FSCHMD_REG_IDENT_2, align 4
  %30 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 %29)
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %19
  %37 = load i32, i32* @fscpos, align 4
  store i32 %37, i32* %6, align 4
  br label %83

38:                                               ; preds = %19
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @fscher, align 4
  store i32 %43, i32* %6, align 4
  br label %82

44:                                               ; preds = %38
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @fscscy, align 4
  store i32 %49, i32* %6, align 4
  br label %81

50:                                               ; preds = %44
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @fschrc, align 4
  store i32 %55, i32* %6, align 4
  br label %80

56:                                               ; preds = %50
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @fschmd, align 4
  store i32 %61, i32* %6, align 4
  br label %79

62:                                               ; preds = %56
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @fschds, align 4
  store i32 %67, i32* %6, align 4
  br label %78

68:                                               ; preds = %62
  %69 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @fscsyl, align 4
  store i32 %73, i32* %6, align 4
  br label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %95

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %66
  br label %79

79:                                               ; preds = %78, %60
  br label %80

80:                                               ; preds = %79, %54
  br label %81

81:                                               ; preds = %80, %48
  br label %82

82:                                               ; preds = %81, %42
  br label %83

83:                                               ; preds = %82, %36
  %84 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %85 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fschmd_id, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @I2C_NAME_SIZE, align 4
  %94 = call i32 @strlcpy(i32 %86, i32 %92, i32 %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %83, %74, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
