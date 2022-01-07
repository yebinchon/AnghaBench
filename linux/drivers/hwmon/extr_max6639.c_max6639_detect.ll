; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6639.c_max6639_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6639.c_max6639_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MAX6639_REG_DEVID = common dso_local global i32 0, align 4
@MAX6639_REG_MANUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"max6639\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @max6639_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6639_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %6, align 8
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %14 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load i32, i32* @MAX6639_REG_DEVID, align 4
  %22 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @MAX6639_REG_MANUID, align 4
  %25 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 88
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 77
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %19
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %28
  %35 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @I2C_NAME_SIZE, align 4
  %39 = call i32 @strlcpy(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %34, %31, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
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
