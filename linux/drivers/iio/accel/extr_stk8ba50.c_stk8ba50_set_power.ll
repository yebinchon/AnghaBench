; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8ba50.c_stk8ba50_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8ba50.c_stk8ba50_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk8ba50_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@STK8BA50_REG_POWMODE = common dso_local global i32 0, align 4
@STK8BA50_MODE_POWERBIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to change sensor mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk8ba50_data*, i32)* @stk8ba50_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk8ba50_set_power(%struct.stk8ba50_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stk8ba50_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  store %struct.stk8ba50_data* %0, %struct.stk8ba50_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %4, align 8
  %10 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %9, i32 0, i32 0
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %8, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %13 = load i32, i32* @STK8BA50_REG_POWMODE, align 4
  %14 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %40

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @STK8BA50_MODE_POWERBIT, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %7, align 4
  br label %30

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @STK8BA50_MODE_POWERBIT, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %32 = load i32, i32* @STK8BA50_REG_POWMODE, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %37, %17
  %41 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %38
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
