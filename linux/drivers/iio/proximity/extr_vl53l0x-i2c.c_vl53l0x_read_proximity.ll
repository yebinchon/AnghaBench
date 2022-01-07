; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_vl53l0x-i2c.c_vl53l0x_read_proximity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_vl53l0x-i2c.c_vl53l0x_read_proximity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vl53l0x_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.iio_chan_spec = type { i32 }

@VL_REG_SYSRANGE_START = common dso_local global i32 0, align 4
@VL_REG_RESULT_RANGE_STATUS = common dso_local global i32 0, align 4
@VL_REG_RESULT_RANGE_STATUS_COMPLETE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vl53l0x_data*, %struct.iio_chan_spec*, i32*)* @vl53l0x_read_proximity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vl53l0x_read_proximity(%struct.vl53l0x_data* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vl53l0x_data*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [12 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.vl53l0x_data* %0, %struct.vl53l0x_data** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.vl53l0x_data*, %struct.vl53l0x_data** %5, align 8
  %13 = getelementptr inbounds %struct.vl53l0x_data, %struct.vl53l0x_data* %12, i32 0, i32 0
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %8, align 8
  store i32 20, i32* %9, align 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %16 = load i32, i32* @VL_REG_SYSRANGE_START, align 4
  %17 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %15, i32 %16, i32 1)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %73

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %39, %22
  %24 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %25 = load i32, i32* @VL_REG_RESULT_RANGE_STATUS, align 4
  %26 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %73

31:                                               ; preds = %23
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @VL_REG_RESULT_RANGE_STATUS_COMPLETE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %43

37:                                               ; preds = %31
  %38 = call i32 @usleep_range(i32 1000, i32 5000)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %23, label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %73

49:                                               ; preds = %43
  %50 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %51 = load i32, i32* @VL_REG_RESULT_RANGE_STATUS, align 4
  %52 = getelementptr inbounds [12 x i32], [12 x i32]* %10, i64 0, i64 0
  %53 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %50, i32 %51, i32 12, i32* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %73

58:                                               ; preds = %49
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 12
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @EREMOTEIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %73

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds [12 x i32], [12 x i32]* %10, i64 0, i64 10
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 %67, 8
  %69 = getelementptr inbounds [12 x i32], [12 x i32]* %10, i64 0, i64 11
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %68, %70
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %65, %61, %56, %46, %29, %20
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
