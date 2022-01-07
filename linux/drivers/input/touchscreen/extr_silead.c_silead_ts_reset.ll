; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@SILEAD_REG_RESET = common dso_local global i32 0, align 4
@SILEAD_CMD_RESET = common dso_local global i32 0, align 4
@SILEAD_CMD_SLEEP_MIN = common dso_local global i32 0, align 4
@SILEAD_CMD_SLEEP_MAX = common dso_local global i32 0, align 4
@SILEAD_REG_CLOCK = common dso_local global i32 0, align 4
@SILEAD_CLOCK = common dso_local global i32 0, align 4
@SILEAD_REG_POWER = common dso_local global i32 0, align 4
@SILEAD_CMD_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Chip reset error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @silead_ts_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @silead_ts_reset(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = load i32, i32* @SILEAD_REG_RESET, align 4
  %7 = load i32, i32* @SILEAD_CMD_RESET, align 4
  %8 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %5, i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  %13 = load i32, i32* @SILEAD_CMD_SLEEP_MIN, align 4
  %14 = load i32, i32* @SILEAD_CMD_SLEEP_MAX, align 4
  %15 = call i32 @usleep_range(i32 %13, i32 %14)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = load i32, i32* @SILEAD_REG_CLOCK, align 4
  %18 = load i32, i32* @SILEAD_CLOCK, align 4
  %19 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %16, i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %38

23:                                               ; preds = %12
  %24 = load i32, i32* @SILEAD_CMD_SLEEP_MIN, align 4
  %25 = load i32, i32* @SILEAD_CMD_SLEEP_MAX, align 4
  %26 = call i32 @usleep_range(i32 %24, i32 %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %28 = load i32, i32* @SILEAD_REG_POWER, align 4
  %29 = load i32, i32* @SILEAD_CMD_START, align 4
  %30 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %27, i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %38

34:                                               ; preds = %23
  %35 = load i32, i32* @SILEAD_CMD_SLEEP_MIN, align 4
  %36 = load i32, i32* @SILEAD_CMD_SLEEP_MAX, align 4
  %37 = call i32 @usleep_range(i32 %35, i32 %36)
  store i32 0, i32* %2, align 4
  br label %44

38:                                               ; preds = %33, %22, %11
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
