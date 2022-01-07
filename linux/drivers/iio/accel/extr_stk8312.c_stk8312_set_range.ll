; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8312.c_stk8312_set_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8312.c_stk8312_set_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk8312_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@STK8312_MODE_STANDBY = common dso_local global i32 0, align 4
@STK8312_REG_STH = common dso_local global i32 0, align 4
@STK8312_RNG_MASK = common dso_local global i32 0, align 4
@STK8312_RNG_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to change sensor range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk8312_data*, i32)* @stk8312_set_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk8312_set_range(%struct.stk8312_data* %0, i32 %1) #0 {
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
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %79

21:                                               ; preds = %15, %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %24 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %79

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %31 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %34 = load i32, i32* @STK8312_MODE_STANDBY, align 4
  %35 = call i32 @stk8312_set_mode(%struct.stk8312_data* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %79

40:                                               ; preds = %29
  %41 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %42 = load i32, i32* @STK8312_REG_STH, align 4
  %43 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %71

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @STK8312_RNG_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @STK8312_RNG_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %58 = load i32, i32* @STK8312_REG_STH, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %57, i32 %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %71

64:                                               ; preds = %47
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %67 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @stk8312_set_mode(%struct.stk8312_data* %68, i32 %69)
  store i32 %70, i32* %3, align 4
  br label %79

71:                                               ; preds = %63, %46
  %72 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.stk8312_data*, %struct.stk8312_data** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @stk8312_set_mode(%struct.stk8312_data* %75, i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %71, %64, %38, %27, %18
  %80 = load i32, i32* %3, align 4
  ret i32 %80
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
