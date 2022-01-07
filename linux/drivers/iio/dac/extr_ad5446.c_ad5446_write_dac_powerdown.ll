; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5446.c_ad5446_write_dac_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5446.c_ad5446_write_dac_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ad5446_state = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ad5446_state*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @ad5446_write_dac_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5446_write_dac_powerdown(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad5446_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.ad5446_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad5446_state* %18, %struct.ad5446_state** %12, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @strtobool(i8* %19, i32* %15)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %16, align 4
  store i32 %24, i32* %6, align 4
  br label %77

25:                                               ; preds = %5
  %26 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %27 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %15, align 4
  %30 = load %struct.ad5446_state*, %struct.ad5446_state** %12, align 8
  %31 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ad5446_state*, %struct.ad5446_state** %12, align 8
  %33 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %25
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %42 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %40, %44
  store i32 %45, i32* %13, align 4
  %46 = load %struct.ad5446_state*, %struct.ad5446_state** %12, align 8
  %47 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = shl i32 %48, %49
  store i32 %50, i32* %14, align 4
  br label %55

51:                                               ; preds = %25
  %52 = load %struct.ad5446_state*, %struct.ad5446_state** %12, align 8
  %53 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %51, %36
  %56 = load %struct.ad5446_state*, %struct.ad5446_state** %12, align 8
  %57 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.ad5446_state*, i32)*, i32 (%struct.ad5446_state*, i32)** %59, align 8
  %61 = load %struct.ad5446_state*, %struct.ad5446_state** %12, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 %60(%struct.ad5446_state* %61, i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  br label %74

72:                                               ; preds = %55
  %73 = load i64, i64* %11, align 8
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i64 [ %71, %69 ], [ %73, %72 ]
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %23
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.ad5446_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
