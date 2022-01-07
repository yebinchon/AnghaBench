; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_dmard09.c_dmard09_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_dmard09.c_dmard09_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.dmard09_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DMARD09_BUF_LEN = common dso_local global i32 0, align 4
@DMARD09_REG_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error reading reg %d\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @dmard09_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmard09_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dmard09_data*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.dmard09_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.dmard09_data* %19, %struct.dmard09_data** %12, align 8
  %20 = load i32, i32* @DMARD09_BUF_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load i64, i64* %11, align 8
  switch i64 %24, label %55 [
    i64 128, label %25
  ]

25:                                               ; preds = %5
  %26 = load %struct.dmard09_data*, %struct.dmard09_data** %12, align 8
  %27 = getelementptr inbounds %struct.dmard09_data, %struct.dmard09_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* @DMARD09_REG_STAT, align 4
  %30 = load i32, i32* @DMARD09_BUF_LEN, align 4
  %31 = call i32 @i2c_smbus_read_i2c_block_data(%struct.TYPE_2__* %28, i32 %29, i32 %30, i32* %23)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load %struct.dmard09_data*, %struct.dmard09_data** %12, align 8
  %36 = getelementptr inbounds %struct.dmard09_data, %struct.dmard09_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* @DMARD09_REG_STAT, align 4
  %40 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %58

42:                                               ; preds = %25
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %23, i64 %45
  %47 = call i32 @get_unaligned_le16(i32* %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = shl i32 %48, 4
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = ashr i32 %50, 7
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %54, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %58

55:                                               ; preds = %5
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %58

58:                                               ; preds = %55, %42, %34
  %59 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.dmard09_data* @iio_priv(%struct.iio_dev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.TYPE_2__*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
