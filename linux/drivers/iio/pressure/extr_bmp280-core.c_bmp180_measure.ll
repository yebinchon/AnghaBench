; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp180_measure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp180_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmp280_data = type { i64, i32, i32, i32, i64 }

@__const.bmp180_measure.conversion_time_max = private unnamed_addr constant [4 x i32] [i32 4500, i32 7500, i32 13500, i32 25500], align 16
@BMP280_REG_CTRL_MEAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"timeout waiting for completion\0A\00", align 1
@BMP180_MEAS_TEMP = common dso_local global i64 0, align 8
@BMP180_MEAS_SCO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmp280_data*, i64)* @bmp180_measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp180_measure(%struct.bmp280_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bmp280_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bmp280_data* %0, %struct.bmp280_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([4 x i32]* @__const.bmp180_measure.conversion_time_max to i8*), i64 16, i1 false)
  %11 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %12 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %17 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %16, i32 0, i32 3
  %18 = call i32 @init_completion(i32* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %21 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BMP280_REG_CTRL_MEAS, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @regmap_write(i32 %22, i32 %23, i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %84

30:                                               ; preds = %19
  %31 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %32 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %37 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %36, i32 0, i32 3
  %38 = call i64 @msecs_to_jiffies(i32 100)
  %39 = add nsw i64 1, %38
  %40 = call i32 @wait_for_completion_timeout(i32* %37, i64 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %45 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %35
  br label %65

49:                                               ; preds = %30
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @BMP180_MEAS_TEMP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 4500, i32* %8, align 4
  br label %60

54:                                               ; preds = %49
  %55 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %56 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %54, %53
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1000
  %64 = call i32 @usleep_range(i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %60, %48
  %66 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %67 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @BMP280_REG_CTRL_MEAS, align 4
  %70 = call i32 @regmap_read(i32 %68, i32 %69, i32* %9)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %84

75:                                               ; preds = %65
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @BMP180_MEAS_SCO, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %80, %73, %28
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @init_completion(i32*) #2

declare dso_local i32 @regmap_write(i32, i32, i64) #2

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #2

declare dso_local i64 @msecs_to_jiffies(i32) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i32 @regmap_read(i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
