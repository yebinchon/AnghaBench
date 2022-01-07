; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8312.c_stk8312_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8312.c_stk8312_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk8312_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@STK8312_MODE_STANDBY = common dso_local global i32 0, align 4
@STK8312_REG_SR = common dso_local global i32 0, align 4
@STK8312_SR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to set sampling rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk8312_data*, i32)* @stk8312_set_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk8312_set_sample_rate(%struct.stk8312_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stk8312_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_client*, align 8
  store %struct.stk8312_data* %0, %struct.stk8312_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %11 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %10, i32 0, i32 2
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %15 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

19:                                               ; preds = %2
  %20 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %21 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %24 = load i32, i32* @STK8312_MODE_STANDBY, align 4
  %25 = call i32 @stk8312_set_mode(%struct.stk8312_data* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %66

30:                                               ; preds = %19
  %31 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %32 = load i32, i32* @STK8312_REG_SR, align 4
  %33 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %58

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @STK8312_SR_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %45 = load i32, i32* @STK8312_REG_SR, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %44, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %58

51:                                               ; preds = %37
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %54 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @stk8312_set_mode(%struct.stk8312_data* %55, i32 %56)
  store i32 %57, i32* %3, align 4
  br label %66

58:                                               ; preds = %50, %36
  %59 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @stk8312_set_mode(%struct.stk8312_data* %62, i32 %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %58, %51, %28, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @stk8312_set_mode(%struct.stk8312_data*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
