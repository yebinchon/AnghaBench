; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl518sm.c_gl518_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl518sm.c_gl518_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GL518_REG_CHIP_ID = common dso_local global i32 0, align 4
@GL518_REG_CONF = common dso_local global i32 0, align 4
@GL518_REG_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"gl518sm\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @gl518_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl518_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  store %struct.i2c_adapter* %10, %struct.i2c_adapter** %6, align 8
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %12 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load i32, i32* @GL518_REG_CHIP_ID, align 4
  %23 = call i32 @gl518_read_value(%struct.i2c_client* %21, i32 %22)
  %24 = icmp ne i32 %23, 128
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load i32, i32* @GL518_REG_CONF, align 4
  %28 = call i32 @gl518_read_value(%struct.i2c_client* %26, i32 %27)
  %29 = and i32 %28, 128
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %20
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %52

34:                                               ; preds = %25
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @GL518_REG_REVISION, align 4
  %37 = call i32 @gl518_read_value(%struct.i2c_client* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 128
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %52

46:                                               ; preds = %40, %34
  %47 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %48 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @I2C_NAME_SIZE, align 4
  %51 = call i32 @strlcpy(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %43, %31, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @gl518_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
