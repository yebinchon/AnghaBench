; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21013_ts.c_bu21013_read_block_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21013_ts.c_bu21013_read_block_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bu21013_ts = type { i32 }

@I2C_RETRY_COUNT = common dso_local global i32 0, align 4
@BU21013_SENSORS_BTN_0_7_REG = common dso_local global i32 0, align 4
@LENGTH_OF_BUFFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bu21013_ts*, i32*)* @bu21013_read_block_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bu21013_read_block_data(%struct.bu21013_ts* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bu21013_ts*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bu21013_ts* %0, %struct.bu21013_ts** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @I2C_RETRY_COUNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.bu21013_ts*, %struct.bu21013_ts** %4, align 8
  %14 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BU21013_SENSORS_BTN_0_7_REG, align 4
  %17 = load i32, i32* @LENGTH_OF_BUFFER, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @i2c_smbus_read_i2c_block_data(i32 %15, i32 %16, i32 %17, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @LENGTH_OF_BUFFER, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %31

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %8

28:                                               ; preds = %8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @i2c_smbus_read_i2c_block_data(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
