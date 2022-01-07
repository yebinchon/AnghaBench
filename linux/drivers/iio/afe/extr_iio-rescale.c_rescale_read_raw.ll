; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/afe/extr_iio-rescale.c_rescale_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/afe/extr_iio-rescale.c_rescale_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.rescale = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @rescale_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rescale_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rescale*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.rescale* @iio_priv(%struct.iio_dev* %15)
  store %struct.rescale* %16, %struct.rescale** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %90 [
    i64 132, label %18
    i64 131, label %24
  ]

18:                                               ; preds = %5
  %19 = load %struct.rescale*, %struct.rescale** %12, align 8
  %20 = getelementptr inbounds %struct.rescale, %struct.rescale* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @iio_read_channel_raw(i32 %21, i32* %22)
  store i32 %23, i32* %6, align 4
  br label %93

24:                                               ; preds = %5
  %25 = load %struct.rescale*, %struct.rescale** %12, align 8
  %26 = getelementptr inbounds %struct.rescale, %struct.rescale* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @iio_read_channel_scale(i32 %27, i32* %28, i32* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  switch i32 %31, label %87 [
    i32 130, label %32
    i32 128, label %46
    i32 129, label %64
  ]

32:                                               ; preds = %24
  %33 = load %struct.rescale*, %struct.rescale** %12, align 8
  %34 = getelementptr inbounds %struct.rescale, %struct.rescale* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load %struct.rescale*, %struct.rescale** %12, align 8
  %40 = getelementptr inbounds %struct.rescale, %struct.rescale* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %6, align 4
  br label %93

46:                                               ; preds = %24
  %47 = load %struct.rescale*, %struct.rescale** %12, align 8
  %48 = getelementptr inbounds %struct.rescale, %struct.rescale* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load %struct.rescale*, %struct.rescale** %12, align 8
  %54 = getelementptr inbounds %struct.rescale, %struct.rescale* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %6, align 4
  br label %93

59:                                               ; preds = %46
  %60 = load %struct.rescale*, %struct.rescale** %12, align 8
  %61 = getelementptr inbounds %struct.rescale, %struct.rescale* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  store i32 130, i32* %6, align 4
  br label %93

64:                                               ; preds = %24
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %67, 1000000000
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load %struct.rescale*, %struct.rescale** %12, align 8
  %71 = getelementptr inbounds %struct.rescale, %struct.rescale* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = call i32 @do_div(i64 %69, i64 %73)
  %75 = load %struct.rescale*, %struct.rescale** %12, align 8
  %76 = getelementptr inbounds %struct.rescale, %struct.rescale* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %13, align 8
  %80 = mul i64 %79, %78
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i32 @do_div(i64 %81, i64 1000000000)
  %83 = load i64, i64* %13, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %6, align 4
  br label %93

87:                                               ; preds = %24
  %88 = load i32, i32* @EOPNOTSUPP, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %93

90:                                               ; preds = %5
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %87, %64, %59, %57, %32, %18
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.rescale* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_read_channel_raw(i32, i32*) #1

declare dso_local i32 @iio_read_channel_scale(i32, i32*, i32*) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
