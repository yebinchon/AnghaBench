; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8312.c_stk8312_set_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8312.c_stk8312_set_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk8312_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@STK8312_MODE_STANDBY = common dso_local global i32 0, align 4
@STK8312_REG_INTSU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to set interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk8312_data*, i32)* @stk8312_set_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk8312_set_interrupts(%struct.stk8312_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stk8312_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  store %struct.stk8312_data* %0, %struct.stk8312_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %10 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %9, i32 0, i32 1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %8, align 8
  %12 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %13 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %16 = load i32, i32* @STK8312_MODE_STANDBY, align 4
  %17 = call i32 @stk8312_set_mode(%struct.stk8312_data* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %24 = load i32, i32* @STK8312_REG_INTSU, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @stk8312_set_mode(%struct.stk8312_data* %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %22
  %38 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @stk8312_set_mode(%struct.stk8312_data* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %29, %20
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @stk8312_set_mode(%struct.stk8312_data*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
