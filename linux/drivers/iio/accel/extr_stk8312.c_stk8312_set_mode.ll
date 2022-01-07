; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8312.c_stk8312_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8312.c_stk8312_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk8312_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@STK8312_REG_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to change sensor mode\0A\00", align 1
@STK8312_MODE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk8312_data*, i32)* @stk8312_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk8312_set_mode(%struct.stk8312_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stk8312_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  store %struct.stk8312_data* %0, %struct.stk8312_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %9 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %8, i32 0, i32 1
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %13 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %19 = load i32, i32* @STK8312_REG_MODE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %18, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %32 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @STK8312_MODE_ACTIVE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = call i32 @usleep_range(i32 1000, i32 5000)
  %39 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %40 = call i32 @stk8312_otp_init(%struct.stk8312_data* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %24, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @stk8312_otp_init(%struct.stk8312_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
