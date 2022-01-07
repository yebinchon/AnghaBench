; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_convert_raw_to_processed_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_convert_raw_to_processed_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_channel = type { i32 }

@IIO_CHAN_INFO_OFFSET = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_SCALE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_channel*, i32, i32*, i32)* @iio_convert_raw_to_processed_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_convert_raw_to_processed_unlocked(%struct.iio_channel* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_channel* %0, %struct.iio_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %14, align 4
  %17 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  %18 = load i32, i32* @IIO_CHAN_INFO_OFFSET, align 4
  %19 = call i32 @iio_channel_read(%struct.iio_channel* %17, i32* %13, i32* null, i32 %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %14, align 4
  br label %26

26:                                               ; preds = %22, %4
  %27 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  %28 = load i32, i32* @IIO_CHAN_INFO_SCALE, align 4
  %29 = call i32 @iio_channel_read(%struct.iio_channel* %27, i32* %11, i32* %12, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %5, align 4
  br label %112

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %108 [
    i32 130, label %37
    i32 129, label %42
    i32 128, label %66
    i32 132, label %90
    i32 131, label %99
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  br label %111

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %14, align 4
  %47 = sub nsw i32 0, %46
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  br label %56

51:                                               ; preds = %42
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %45
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %12, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = mul i32 %59, %60
  %62 = call i32 @div_s64(i32 %61, i32 1000000)
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %111

66:                                               ; preds = %35
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* %14, align 4
  %71 = sub nsw i32 0, %70
  %72 = load i32, i32* %11, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32*, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  br label %80

75:                                               ; preds = %66
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32*, i32** %8, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %69
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %12, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %9, align 4
  %85 = mul i32 %83, %84
  %86 = call i32 @div_s64(i32 %85, i32 1000000000)
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, %86
  store i32 %89, i32* %87, align 4
  br label %111

90:                                               ; preds = %35
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %9, align 4
  %95 = mul i32 %93, %94
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @div_s64(i32 %95, i32 %96)
  %98 = load i32*, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  br label %111

99:                                               ; preds = %35
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %11, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32, i32* %9, align 4
  %104 = mul i32 %102, %103
  %105 = load i32, i32* %12, align 4
  %106 = lshr i32 %104, %105
  %107 = load i32*, i32** %8, align 8
  store i32 %106, i32* %107, align 4
  br label %111

108:                                              ; preds = %35
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %112

111:                                              ; preds = %99, %90, %80, %56, %37
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %108, %32
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @iio_channel_read(%struct.iio_channel*, i32*, i32*, i32) #1

declare dso_local i32 @div_s64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
