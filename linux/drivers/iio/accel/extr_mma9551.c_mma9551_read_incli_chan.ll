; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551.c_mma9551_read_incli_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551.c_mma9551_read_incli_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.iio_chan_spec = type { i32 }

@MMA9551_TILT_YZ_ANG_REG = common dso_local global i32 0, align 4
@MMA9551_TILT_YZ_QUAD_SHIFT = common dso_local global i32 0, align 4
@MMA9551_TILT_XZ_ANG_REG = common dso_local global i32 0, align 4
@MMA9551_TILT_XZ_QUAD_SHIFT = common dso_local global i32 0, align 4
@MMA9551_TILT_XY_ANG_REG = common dso_local global i32 0, align 4
@MMA9551_TILT_XY_QUAD_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MMA9551_APPID_TILT = common dso_local global i32 0, align 4
@MMA9551_TILT_QUAD_REG = common dso_local global i32 0, align 4
@MMA9551_TILT_ANGFLG = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.iio_chan_spec*, i32*)* @mma9551_read_incli_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9551_read_incli_chan(%struct.i2c_client* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %14 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %25 [
    i32 130, label %16
    i32 129, label %19
    i32 128, label %22
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @MMA9551_TILT_YZ_ANG_REG, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @MMA9551_TILT_YZ_QUAD_SHIFT, align 4
  store i32 %18, i32* %8, align 4
  br label %28

19:                                               ; preds = %3
  %20 = load i32, i32* @MMA9551_TILT_XZ_ANG_REG, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @MMA9551_TILT_XZ_QUAD_SHIFT, align 4
  store i32 %21, i32* %8, align 4
  br label %28

22:                                               ; preds = %3
  %23 = load i32, i32* @MMA9551_TILT_XY_ANG_REG, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @MMA9551_TILT_XY_QUAD_SHIFT, align 4
  store i32 %24, i32* %8, align 4
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %84

28:                                               ; preds = %22, %19, %16
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = call i32 @mma9551_set_power_state(%struct.i2c_client* %29, i32 1)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %4, align 4
  br label %84

35:                                               ; preds = %28
  %36 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %37 = load i32, i32* @MMA9551_APPID_TILT, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @mma9551_read_status_byte(%struct.i2c_client* %36, i32 %37, i32 %38, i32* %9)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %80

43:                                               ; preds = %35
  %44 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %45 = load i32, i32* @MMA9551_APPID_TILT, align 4
  %46 = load i32, i32* @MMA9551_TILT_QUAD_REG, align 4
  %47 = call i32 @mma9551_read_status_byte(%struct.i2c_client* %44, i32 %45, i32 %46, i32* %10)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %80

51:                                               ; preds = %43
  %52 = load i32, i32* @MMA9551_TILT_ANGFLG, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = ashr i32 %56, %57
  %59 = and i32 %58, 3
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %65, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %72

65:                                               ; preds = %62, %51
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  %68 = mul nsw i32 90, %67
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %78

72:                                               ; preds = %62
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = mul nsw i32 90, %74
  %76 = add nsw i32 %73, %75
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %72, %65
  %79 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %78, %50, %42
  %81 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %82 = call i32 @mma9551_set_power_state(%struct.i2c_client* %81, i32 0)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %33, %25
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @mma9551_set_power_state(%struct.i2c_client*, i32) #1

declare dso_local i32 @mma9551_read_status_byte(%struct.i2c_client*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
