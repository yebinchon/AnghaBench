; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_write_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_write_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stk3310_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@stk3310_ps_max = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@STK3310_REG_THDH_PS = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@STK3310_REG_THDL_PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to set PS threshold!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @stk3310_write_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk3310_write_event(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.stk3310_data*, align 8
  %21 = alloca %struct.i2c_client*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %23 = call %struct.stk3310_data* @iio_priv(%struct.iio_dev* %22)
  store %struct.stk3310_data* %23, %struct.stk3310_data** %20, align 8
  %24 = load %struct.stk3310_data*, %struct.stk3310_data** %20, align 8
  %25 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %24, i32 0, i32 2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %25, align 8
  store %struct.i2c_client* %26, %struct.i2c_client** %21, align 8
  %27 = load %struct.stk3310_data*, %struct.stk3310_data** %20, align 8
  %28 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regmap_field_read(i32 %29, i32* %19)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = load i32, i32* %18, align 4
  store i32 %34, i32* %8, align 4
  br label %81

35:                                               ; preds = %7
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %14, align 4
  %40 = load i32*, i32** @stk3310_ps_max, align 8
  %41 = load i32, i32* %19, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %39, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38, %35
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %81

49:                                               ; preds = %38
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @STK3310_REG_THDH_PS, align 4
  store i32 %54, i32* %16, align 4
  br label %65

55:                                               ; preds = %49
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @STK3310_REG_THDL_PS, align 4
  store i32 %60, i32* %16, align 4
  br label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %81

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %53
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @cpu_to_be16(i32 %66)
  store i32 %67, i32* %17, align 4
  %68 = load %struct.stk3310_data*, %struct.stk3310_data** %20, align 8
  %69 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @regmap_bulk_write(i32 %70, i32 %71, i32* %17, i32 2)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load %struct.i2c_client*, %struct.i2c_client** %21, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %65
  %80 = load i32, i32* %18, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %79, %61, %46, %33
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local %struct.stk3310_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_field_read(i32, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
