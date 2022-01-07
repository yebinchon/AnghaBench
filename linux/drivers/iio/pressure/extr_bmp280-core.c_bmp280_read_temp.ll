; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmp280_data = type { i32, i32 }

@BMP280_REG_TEMP_MSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to read temperature\0A\00", align 1
@BMP280_TEMP_SKIPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"reading temperature skipped\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmp280_data*, i32*)* @bmp280_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp280_read_temp(%struct.bmp280_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bmp280_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bmp280_data* %0, %struct.bmp280_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %11 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BMP280_REG_TEMP_MSB, align 4
  %14 = bitcast i64* %7 to i32*
  %15 = call i32 @regmap_bulk_read(i32 %12, i32 %13, i32* %14, i32 3)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %20 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @be32_to_cpu(i64 %25)
  %27 = ashr i32 %26, 12
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @BMP280_TEMP_SKIPPED, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %33 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %50

38:                                               ; preds = %24
  %39 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @bmp280_compensate_temp(%struct.bmp280_data* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 10
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %44, %31, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @bmp280_compensate_temp(%struct.bmp280_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
