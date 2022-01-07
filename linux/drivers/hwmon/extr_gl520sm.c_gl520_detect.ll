; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_gl520_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_gl520_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GL520_REG_CHIP_ID = common dso_local global i32 0, align 4
@GL520_REG_REVISION = common dso_local global i32 0, align 4
@GL520_REG_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown chip type, skipping\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"gl520sm\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @gl520_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl520_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 1
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  store %struct.i2c_adapter* %9, %struct.i2c_adapter** %6, align 8
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %11 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load i32, i32* @GL520_REG_CHIP_ID, align 4
  %22 = call i32 @gl520_read_value(%struct.i2c_client* %20, i32 %21)
  %23 = icmp ne i32 %22, 32
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* @GL520_REG_REVISION, align 4
  %27 = call i32 @gl520_read_value(%struct.i2c_client* %25, i32 %26)
  %28 = and i32 %27, 127
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load i32, i32* @GL520_REG_CONF, align 4
  %33 = call i32 @gl520_read_value(%struct.i2c_client* %31, i32 %32)
  %34 = and i32 %33, 128
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30, %24, %19
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %48

42:                                               ; preds = %30
  %43 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %44 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @I2C_NAME_SIZE, align 4
  %47 = call i32 @strlcpy(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %42, %36, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @gl520_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
