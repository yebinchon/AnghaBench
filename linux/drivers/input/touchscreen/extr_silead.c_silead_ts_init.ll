; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.silead_ts_data = type { i32 }

@SILEAD_REG_RESET = common dso_local global i32 0, align 4
@SILEAD_CMD_RESET = common dso_local global i32 0, align 4
@SILEAD_CMD_SLEEP_MIN = common dso_local global i32 0, align 4
@SILEAD_CMD_SLEEP_MAX = common dso_local global i32 0, align 4
@SILEAD_REG_TOUCH_NR = common dso_local global i32 0, align 4
@SILEAD_REG_CLOCK = common dso_local global i32 0, align 4
@SILEAD_CLOCK = common dso_local global i32 0, align 4
@SILEAD_CMD_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Registers clear error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @silead_ts_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @silead_ts_init(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.silead_ts_data*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = call %struct.silead_ts_data* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.silead_ts_data* %7, %struct.silead_ts_data** %4, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = load i32, i32* @SILEAD_REG_RESET, align 4
  %10 = load i32, i32* @SILEAD_CMD_RESET, align 4
  %11 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %8, i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %54

15:                                               ; preds = %1
  %16 = load i32, i32* @SILEAD_CMD_SLEEP_MIN, align 4
  %17 = load i32, i32* @SILEAD_CMD_SLEEP_MAX, align 4
  %18 = call i32 @usleep_range(i32 %16, i32 %17)
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = load i32, i32* @SILEAD_REG_TOUCH_NR, align 4
  %21 = load %struct.silead_ts_data*, %struct.silead_ts_data** %4, align 8
  %22 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %19, i32 %20, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %54

28:                                               ; preds = %15
  %29 = load i32, i32* @SILEAD_CMD_SLEEP_MIN, align 4
  %30 = load i32, i32* @SILEAD_CMD_SLEEP_MAX, align 4
  %31 = call i32 @usleep_range(i32 %29, i32 %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = load i32, i32* @SILEAD_REG_CLOCK, align 4
  %34 = load i32, i32* @SILEAD_CLOCK, align 4
  %35 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %54

39:                                               ; preds = %28
  %40 = load i32, i32* @SILEAD_CMD_SLEEP_MIN, align 4
  %41 = load i32, i32* @SILEAD_CMD_SLEEP_MAX, align 4
  %42 = call i32 @usleep_range(i32 %40, i32 %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %44 = load i32, i32* @SILEAD_REG_RESET, align 4
  %45 = load i32, i32* @SILEAD_CMD_START, align 4
  %46 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %43, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %54

50:                                               ; preds = %39
  %51 = load i32, i32* @SILEAD_CMD_SLEEP_MIN, align 4
  %52 = load i32, i32* @SILEAD_CMD_SLEEP_MAX, align 4
  %53 = call i32 @usleep_range(i32 %51, i32 %52)
  store i32 0, i32* %2, align 4
  br label %60

54:                                               ; preds = %49, %38, %27, %14
  %55 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %50
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.silead_ts_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
