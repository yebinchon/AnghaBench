; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_read_humid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_read_humid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmp280_data = type { i32, i32 }

@BMP280_REG_HUMIDITY_MSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to read humidity\0A\00", align 1
@BMP280_HUMIDITY_SKIPPED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"reading humidity skipped\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmp280_data*, i32*, i32*)* @bmp280_read_humid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp280_read_humid(%struct.bmp280_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmp280_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.bmp280_data* %0, %struct.bmp280_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %13 = call i32 @bmp280_read_temp(%struct.bmp280_data* %12, i32* null)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %55

18:                                               ; preds = %3
  %19 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %20 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BMP280_REG_HUMIDITY_MSB, align 4
  %23 = bitcast i64* %9 to i32*
  %24 = call i32 @regmap_bulk_read(i32 %21, i32 %22, i32* %23, i32 2)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %29 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %55

33:                                               ; preds = %18
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @be16_to_cpu(i64 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @BMP280_HUMIDITY_SKIPPED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %41 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %55

46:                                               ; preds = %33
  %47 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @bmp280_compensate_humidity(%struct.bmp280_data* %47, i64 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 %50, 1000
  %52 = sdiv i32 %51, 1024
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %46, %39, %27, %16
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @bmp280_read_temp(%struct.bmp280_data*, i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i32 @bmp280_compensate_humidity(%struct.bmp280_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
