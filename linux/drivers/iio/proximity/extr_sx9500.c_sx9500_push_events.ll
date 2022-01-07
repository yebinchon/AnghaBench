; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_push_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_push_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.sx9500_data = type { i32*, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SX9500_REG_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"i2c transfer error in irq\0A\00", align 1
@SX9500_PROXSTAT_SHIFT = common dso_local global i32 0, align 4
@SX9500_NUM_CHANNELS = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_PROXIMITY = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*)* @sx9500_push_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx9500_push_events(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sx9500_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %11 = call %struct.sx9500_data* @iio_priv(%struct.iio_dev* %10)
  store %struct.sx9500_data* %11, %struct.sx9500_data** %6, align 8
  %12 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %13 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SX9500_REG_STAT, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %4)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %21 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %87

25:                                               ; preds = %1
  %26 = load i32, i32* @SX9500_PROXSTAT_SHIFT, align 4
  %27 = load i32, i32* %4, align 4
  %28 = lshr i32 %27, %26
  store i32 %28, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %84, %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SX9500_NUM_CHANNELS, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = and i32 %34, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %39 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  br label %84

47:                                               ; preds = %33
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %50 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %48, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %84

58:                                               ; preds = %47
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  br label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @IIO_PROXIMITY, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %75 = call i32 @iio_get_time_ns(%struct.iio_dev* %74)
  %76 = call i32 @iio_push_event(%struct.iio_dev* %72, i32 %73, i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %79 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  br label %84

84:                                               ; preds = %65, %57, %46
  %85 = load i32, i32* %5, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %29

87:                                               ; preds = %19, %29
  ret void
}

declare dso_local %struct.sx9500_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
