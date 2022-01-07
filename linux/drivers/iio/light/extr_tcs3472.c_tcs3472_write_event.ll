; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3472.c_tcs3472_write_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3472.c_tcs3472_write_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tcs3472_data = type { i32, i32, i32, i32, i32, i32 }

@TCS3472_AIHT = common dso_local global i32 0, align 4
@TCS3472_AILT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@tcs3472_intr_pers = common dso_local global i32* null, align 8
@TCS3472_PERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @tcs3472_write_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcs3472_write_event(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tcs3472_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %8, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %21 = call %struct.tcs3472_data* @iio_priv(%struct.iio_dev* %20)
  store %struct.tcs3472_data* %21, %struct.tcs3472_data** %15, align 8
  %22 = load %struct.tcs3472_data*, %struct.tcs3472_data** %15, align 8
  %23 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %22, i32 0, i32 3
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %12, align 4
  switch i32 %25, label %102 [
    i32 128, label %26
    i32 129, label %57
  ]

26:                                               ; preds = %7
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %32 [
    i32 130, label %28
    i32 131, label %30
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @TCS3472_AIHT, align 4
  store i32 %29, i32* %17, align 4
  br label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @TCS3472_AILT, align 4
  store i32 %31, i32* %17, align 4
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %16, align 4
  br label %106

35:                                               ; preds = %30, %28
  %36 = load %struct.tcs3472_data*, %struct.tcs3472_data** %15, align 8
  %37 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @i2c_smbus_write_word_data(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %106

45:                                               ; preds = %35
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 130
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.tcs3472_data*, %struct.tcs3472_data** %15, align 8
  %51 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %56

52:                                               ; preds = %45
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.tcs3472_data*, %struct.tcs3472_data** %15, align 8
  %55 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %48
  br label %105

57:                                               ; preds = %7
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @USEC_PER_SEC, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %63

63:                                               ; preds = %85, %57
  %64 = load i32, i32* %19, align 4
  %65 = load i32*, i32** @tcs3472_intr_pers, align 8
  %66 = call i32 @ARRAY_SIZE(i32* %65)
  %67 = sub nsw i32 %66, 1
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %63
  %70 = load i32, i32* %18, align 4
  %71 = load %struct.tcs3472_data*, %struct.tcs3472_data** %15, align 8
  %72 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 256, %73
  %75 = mul nsw i32 %74, 2400
  %76 = load i32*, i32** @tcs3472_intr_pers, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %75, %80
  %82 = icmp sle i32 %70, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %88

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %19, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %19, align 4
  br label %63

88:                                               ; preds = %83, %63
  %89 = load %struct.tcs3472_data*, %struct.tcs3472_data** %15, align 8
  %90 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @TCS3472_PERS, align 4
  %93 = load i32, i32* %19, align 4
  %94 = call i32 @i2c_smbus_write_byte_data(i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %106

98:                                               ; preds = %88
  %99 = load i32, i32* %19, align 4
  %100 = load %struct.tcs3472_data*, %struct.tcs3472_data** %15, align 8
  %101 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  br label %105

102:                                              ; preds = %7
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %102, %98, %56
  br label %106

106:                                              ; preds = %105, %97, %44, %32
  %107 = load %struct.tcs3472_data*, %struct.tcs3472_data** %15, align 8
  %108 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %107, i32 0, i32 3
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32, i32* %16, align 4
  ret i32 %110
}

declare dso_local %struct.tcs3472_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_word_data(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
