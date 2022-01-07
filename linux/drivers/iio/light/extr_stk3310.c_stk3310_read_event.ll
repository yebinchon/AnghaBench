; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_read_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_read_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stk3310_data = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IIO_EV_INFO_VALUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@STK3310_REG_THDH_PS = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@STK3310_REG_THDL_PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"register read failed\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*)* @stk3310_read_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk3310_read_event(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.stk3310_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %21 = call %struct.stk3310_data* @iio_priv(%struct.iio_dev* %20)
  store %struct.stk3310_data* %21, %struct.stk3310_data** %19, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @IIO_EV_INFO_VALUE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %70

28:                                               ; preds = %7
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @STK3310_REG_THDH_PS, align 4
  store i32 %33, i32* %16, align 4
  br label %44

34:                                               ; preds = %28
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @STK3310_REG_THDL_PS, align 4
  store i32 %39, i32* %16, align 4
  br label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %70

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %32
  %45 = load %struct.stk3310_data*, %struct.stk3310_data** %19, align 8
  %46 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %45, i32 0, i32 1
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.stk3310_data*, %struct.stk3310_data** %19, align 8
  %49 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @regmap_bulk_read(i32 %50, i32 %51, i32* %17, i32 2)
  store i32 %52, i32* %18, align 4
  %53 = load %struct.stk3310_data*, %struct.stk3310_data** %19, align 8
  %54 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %18, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %44
  %59 = load %struct.stk3310_data*, %struct.stk3310_data** %19, align 8
  %60 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* %18, align 4
  store i32 %64, i32* %8, align 4
  br label %70

65:                                               ; preds = %44
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @be16_to_cpu(i32 %66)
  %68 = load i32*, i32** %14, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %65, %58, %40, %25
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local %struct.stk3310_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
