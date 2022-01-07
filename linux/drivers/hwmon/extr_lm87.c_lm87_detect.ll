; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm87.c_lm87_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm87.c_lm87_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LM87_REG_CONFIG = common dso_local global i32 0, align 4
@LM87_REG_COMPANY_ID = common dso_local global i32 0, align 4
@LM87_REG_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lm87\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"adm1024\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"LM87 detection failed at 0x%02x\0A\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @lm87_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm87_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
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
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load i32, i32* @LM87_REG_CONFIG, align 4
  %23 = call i32 @lm87_read_value(%struct.i2c_client* %21, i32 %22)
  %24 = and i32 %23, 128
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %70

29:                                               ; preds = %20
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load i32, i32* @LM87_REG_COMPANY_ID, align 4
  %32 = call i32 @lm87_read_value(%struct.i2c_client* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load i32, i32* @LM87_REG_REVISION, align 4
  %35 = call i32 @lm87_read_value(%struct.i2c_client* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  %40 = icmp sge i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp sle i32 %42, 8
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %63

45:                                               ; preds = %41, %38, %29
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 65
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 240
  %51 = icmp eq i32 %50, 16
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %62

53:                                               ; preds = %48, %45
  %54 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %55 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %54, i32 0, i32 0
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %70

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %65 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* @I2C_NAME_SIZE, align 4
  %69 = call i32 @strlcpy(i32 %66, i8* %67, i32 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %63, %53, %26, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @lm87_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
