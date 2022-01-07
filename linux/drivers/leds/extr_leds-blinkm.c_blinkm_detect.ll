; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_blinkm_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_blinkm_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BLM_GET_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"enodev DEV ADDR = 0x%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"blinkm\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @blinkm_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blinkm_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [7 x i32], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %6, align 8
  store i32 99, i32* %8, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %14 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %15 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %13, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %91

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %52, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %25
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @BLM_GET_ADDR, align 4
  %31 = call i32 @blinkm_write(%struct.i2c_client* %29, i32 %30, i32* null)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %91

36:                                               ; preds = %28
  %37 = call i32 @usleep_range(i32 5000, i32 10000)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load i32, i32* @BLM_GET_ADDR, align 4
  %40 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %41 = call i32 @blinkm_read(%struct.i2c_client* %38, i32 %39, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %91

46:                                               ; preds = %36
  %47 = call i32 @usleep_range(i32 5000, i32 10000)
  %48 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %49 = load i32, i32* %48, align 16
  %50 = icmp eq i32 %49, 9
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %8, align 4
  br label %25

55:                                               ; preds = %25
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = load i32, i32* @BLM_GET_ADDR, align 4
  %58 = call i32 @blinkm_write(%struct.i2c_client* %56, i32 %57, i32* null)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %91

63:                                               ; preds = %55
  %64 = call i32 @usleep_range(i32 20000, i32 30000)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load i32, i32* @BLM_GET_ADDR, align 4
  %67 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %68 = call i32 @blinkm_read(%struct.i2c_client* %65, i32 %66, i32* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %91

73:                                               ; preds = %63
  %74 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %75 = load i32, i32* %74, align 16
  %76 = icmp ne i32 %75, 9
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %81 = load i32, i32* %80, align 16
  %82 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %91

85:                                               ; preds = %73
  %86 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %87 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @I2C_NAME_SIZE, align 4
  %90 = call i32 @strlcpy(i32 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %85, %77, %71, %61, %44, %34, %21
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @blinkm_write(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @blinkm_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
