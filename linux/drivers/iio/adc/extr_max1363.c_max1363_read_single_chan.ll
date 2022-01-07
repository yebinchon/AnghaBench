; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_read_single_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_read_single_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.max1363_state = type { i32 (%struct.i2c_client*, i32*, i32)*, %struct.TYPE_2__*, i32*, i64, %struct.i2c_client.0* }
%struct.i2c_client = type opaque
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client.0 = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@max1363_mode_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i64)* @max1363_read_single_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1363_read_single_chan(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca %struct.max1363_state*, align 8
  %13 = alloca %struct.i2c_client.0*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = call %struct.max1363_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.max1363_state* %15, %struct.max1363_state** %12, align 8
  %16 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %17 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %16, i32 0, i32 4
  %18 = load %struct.i2c_client.0*, %struct.i2c_client.0** %17, align 8
  store %struct.i2c_client.0* %18, %struct.i2c_client.0** %13, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %23 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %28 = call i64 @iio_buffer_enabled(%struct.iio_dev* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %4
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %109

33:                                               ; preds = %26
  %34 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %35 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32*, i32** @max1363_mode_table, align 8
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = icmp ne i32* %36, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %33
  %44 = load i32*, i32** @max1363_mode_table, align 8
  %45 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %46 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %50 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %52 = call i32 @max1363_set_scan_mode(%struct.max1363_state* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %109

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %33
  %58 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %59 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 8
  br i1 %63, label %64, label %91

64:                                               ; preds = %57
  %65 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %66 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %65, i32 0, i32 0
  %67 = load i32 (%struct.i2c_client*, i32*, i32)*, i32 (%struct.i2c_client*, i32*, i32)** %66, align 8
  %68 = load %struct.i2c_client.0*, %struct.i2c_client.0** %13, align 8
  %69 = bitcast %struct.i2c_client.0* %68 to %struct.i2c_client*
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %71 = call i32 %67(%struct.i2c_client* %69, i32* %70, i32 2)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %9, align 4
  br label %109

76:                                               ; preds = %64
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 8
  %82 = or i32 %78, %81
  %83 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %84 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 1, %87
  %89 = sub nsw i32 %88, 1
  %90 = and i32 %82, %89
  store i32 %90, i32* %10, align 4
  br label %106

91:                                               ; preds = %57
  %92 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %93 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %92, i32 0, i32 0
  %94 = load i32 (%struct.i2c_client*, i32*, i32)*, i32 (%struct.i2c_client*, i32*, i32)** %93, align 8
  %95 = load %struct.i2c_client.0*, %struct.i2c_client.0** %13, align 8
  %96 = bitcast %struct.i2c_client.0* %95 to %struct.i2c_client*
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %98 = call i32 %94(%struct.i2c_client* %96, i32* %97, i32 1)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %9, align 4
  br label %109

103:                                              ; preds = %91
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %103, %76
  %107 = load i32, i32* %10, align 4
  %108 = load i32*, i32** %7, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %101, %74, %55, %30
  %110 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %111 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

declare dso_local %struct.max1363_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @max1363_set_scan_mode(%struct.max1363_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
