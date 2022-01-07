; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5755.c_ad5755_chan_reg_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5755.c_ad5755_chan_reg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5755_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iio_chan_spec = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5755_state*, %struct.iio_chan_spec*, i64, i32, i32*, i32*, i32*)* @ad5755_chan_reg_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5755_chan_reg_info(%struct.ad5755_state* %0, %struct.iio_chan_spec* %1, i64 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ad5755_state*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.ad5755_state* %0, %struct.ad5755_state** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %85 [
    i64 128, label %17
    i64 130, label %39
    i64 129, label %62
  ]

17:                                               ; preds = %7
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @AD5755_WRITE_REG_DATA(i32 %23)
  %25 = load i32*, i32** %13, align 8
  store i32 %24, i32* %25, align 4
  br label %32

26:                                               ; preds = %17
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @AD5755_READ_REG_DATA(i32 %29)
  %31 = load i32*, i32** %13, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %14, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %15, align 8
  store i32 0, i32* %38, align 4
  br label %88

39:                                               ; preds = %7
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @AD5755_WRITE_REG_OFFSET(i32 %45)
  %47 = load i32*, i32** %13, align 8
  store i32 %46, i32* %47, align 4
  br label %54

48:                                               ; preds = %39
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %50 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @AD5755_READ_REG_OFFSET(i32 %51)
  %53 = load i32*, i32** %13, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.ad5755_state*, %struct.ad5755_state** %9, align 8
  %56 = getelementptr inbounds %struct.ad5755_state, %struct.ad5755_state* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %14, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %15, align 8
  store i32 32768, i32* %61, align 4
  br label %88

62:                                               ; preds = %7
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %67 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @AD5755_WRITE_REG_GAIN(i32 %68)
  %70 = load i32*, i32** %13, align 8
  store i32 %69, i32* %70, align 4
  br label %77

71:                                               ; preds = %62
  %72 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %73 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @AD5755_READ_REG_GAIN(i32 %74)
  %76 = load i32*, i32** %13, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %71, %65
  %78 = load %struct.ad5755_state*, %struct.ad5755_state** %9, align 8
  %79 = getelementptr inbounds %struct.ad5755_state, %struct.ad5755_state* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %14, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %15, align 8
  store i32 0, i32* %84, align 4
  br label %88

85:                                               ; preds = %7
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %89

88:                                               ; preds = %77, %54, %32
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %88, %85
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i32 @AD5755_WRITE_REG_DATA(i32) #1

declare dso_local i32 @AD5755_READ_REG_DATA(i32) #1

declare dso_local i32 @AD5755_WRITE_REG_OFFSET(i32) #1

declare dso_local i32 @AD5755_READ_REG_OFFSET(i32) #1

declare dso_local i32 @AD5755_WRITE_REG_GAIN(i32) #1

declare dso_local i32 @AD5755_READ_REG_GAIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
