; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_measure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32, i32 }
%struct.si1145_data = type { i32 }

@IIO_PROXIMITY = common dso_local global i64 0, align 8
@SI1145_CMD_PS_FORCE = common dso_local global i32 0, align 4
@SI1145_CMD_ALS_FORCE = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*)* @si1145_measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1145_measure(%struct.iio_dev* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca %struct.si1145_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.si1145_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.si1145_data* %10, %struct.si1145_data** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %13 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = call i32 @si1145_set_chlist(%struct.iio_dev* %11, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IIO_PROXIMITY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @SI1145_CMD_PS_FORCE, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @SI1145_CMD_ALS_FORCE, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %7, align 4
  %33 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @si1145_command(%struct.si1145_data* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @EOVERFLOW, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %53

45:                                               ; preds = %38, %31
  %46 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %47 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %50 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @i2c_smbus_read_word_data(i32 %48, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %45, %43, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.si1145_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @si1145_set_chlist(%struct.iio_dev*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @si1145_command(%struct.si1145_data*, i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
