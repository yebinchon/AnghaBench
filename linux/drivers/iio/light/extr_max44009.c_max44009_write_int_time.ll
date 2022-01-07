; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44009.c_max44009_write_int_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44009.c_max44009_write_int_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max44009_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@max44009_int_time_ns_array = common dso_local global i32 0, align 4
@MAX44009_REG_CFG = common dso_local global i32 0, align 4
@MAX44009_CFG_MAN_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max44009_data*, i32, i32)* @max44009_write_int_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max44009_write_int_time(%struct.max44009_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max44009_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.max44009_data* %0, %struct.max44009_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.max44009_data*, %struct.max44009_data** %5, align 8
  %14 = getelementptr inbounds %struct.max44009_data, %struct.max44009_data* %13, i32 0, i32 0
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @NSEC_PER_SEC, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @max44009_int_time_ns_array, align 4
  %23 = load i32, i32* @max44009_int_time_ns_array, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @find_closest_descending(i32 %21, i32 %22, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %27 = load i32, i32* @MAX44009_REG_CFG, align 4
  %28 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %45

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @MAX44009_CFG_MAN_MODE_MASK, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %42 = load i32, i32* @MAX44009_REG_CFG, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %41, i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %33, %31
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @find_closest_descending(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
