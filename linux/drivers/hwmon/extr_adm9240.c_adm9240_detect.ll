; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm9240.c_adm9240_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm9240.c_adm9240_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ADM9240_REG_I2C_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"detect fail: address match, 0x%02x\0A\00", align 1
@ADM9240_REG_MAN_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"adm9240\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ds1780\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"lm81\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"detect fail: unknown manuf, 0x%02x\0A\00", align 1
@ADM9240_REG_DIE_REV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"found %s revision %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ADM9240\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"DS1780\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LM81\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @adm9240_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm9240_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %18 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %19 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %85

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* @ADM9240_REG_I2C_ADDR, align 4
  %27 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %85

37:                                               ; preds = %24
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load i32, i32* @ADM9240_REG_MAN_ID, align 4
  %40 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 35
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %61

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 218
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %60

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %59

52:                                               ; preds = %48
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %54 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %85

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %47
  br label %61

61:                                               ; preds = %60, %43
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load i32, i32* @ADM9240_REG_DIE_REV, align 4
  %64 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %66 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 35
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %75

70:                                               ; preds = %61
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 218
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  br label %75

75:                                               ; preds = %70, %69
  %76 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %69 ], [ %74, %70 ]
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @dev_info(i32* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %76, i32 %77)
  %79 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %80 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* @I2C_NAME_SIZE, align 4
  %84 = call i32 @strlcpy(i32 %81, i8* %82, i32 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %75, %52, %30, %21
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
