; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tsys01.c_tsys01_read_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tsys01.c_tsys01_read_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.tsys01_dev = type { i32 (i32, i32, i32, i32, i32*)*, i64*, i32, i32 }

@TSYS01_CONVERSION_START = common dso_local global i32 0, align 4
@TSYS01_ADC_READ = common dso_local global i32 0, align 4
@coeff_mul = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32*)* @tsys01_read_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsys01_read_temperature(%struct.iio_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tsys01_dev*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = call %struct.tsys01_dev* @iio_priv(%struct.iio_dev* %11)
  store %struct.tsys01_dev* %12, %struct.tsys01_dev** %10, align 8
  %13 = load %struct.tsys01_dev*, %struct.tsys01_dev** %10, align 8
  %14 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.tsys01_dev*, %struct.tsys01_dev** %10, align 8
  %17 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %16, i32 0, i32 0
  %18 = load i32 (i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32*)** %17, align 8
  %19 = load %struct.tsys01_dev*, %struct.tsys01_dev** %10, align 8
  %20 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TSYS01_CONVERSION_START, align 4
  %23 = load i32, i32* @TSYS01_ADC_READ, align 4
  %24 = call i32 %18(i32 %21, i32 %22, i32 %23, i32 9000, i32* %8)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.tsys01_dev*, %struct.tsys01_dev** %10, align 8
  %26 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %25, i32 0, i32 2
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %83

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %33, 8
  store i32 %34, i32* %8, align 4
  store i32 4, i32* %7, align 4
  br label %35

35:                                               ; preds = %61, %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load i32*, i32** @coeff_mul, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tsys01_dev*, %struct.tsys01_dev** %10, align 8
  %45 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 5, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = mul nsw i32 %43, %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @div64_s64(i32 %59, i32 100000)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %38
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %7, align 4
  br label %35

64:                                               ; preds = %35
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 %65, 10
  store i32 %66, i32* %9, align 4
  %67 = load i32*, i32** @coeff_mul, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.tsys01_dev*, %struct.tsys01_dev** %10, align 8
  %71 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 5
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = mul nsw i32 %69, %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @div64_s64(i32 %79, i32 100000)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %64, %30
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.tsys01_dev* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @div64_s64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
