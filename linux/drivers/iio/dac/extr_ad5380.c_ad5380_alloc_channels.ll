; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5380.c_ad5380_alloc_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5380.c_ad5380_alloc_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.iio_chan_spec* }
%struct.iio_chan_spec = type { i32, i32 }
%struct.ad5380_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.iio_chan_spec }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ad5380_alloc_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5380_alloc_channels(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ad5380_state*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.ad5380_state* @iio_priv(%struct.iio_dev* %7)
  store %struct.ad5380_state* %8, %struct.ad5380_state** %4, align 8
  %9 = load %struct.ad5380_state*, %struct.ad5380_state** %4, align 8
  %10 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.iio_chan_spec* @kcalloc(i32 %13, i32 8, i32 %14)
  store %struct.iio_chan_spec* %15, %struct.iio_chan_spec** %5, align 8
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %17 = icmp ne %struct.iio_chan_spec* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %60

21:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %53, %21
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ad5380_state*, %struct.ad5380_state** %4, align 8
  %25 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %23, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %22
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i64 %33
  %35 = load %struct.ad5380_state*, %struct.ad5380_state** %4, align 8
  %36 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = bitcast %struct.iio_chan_spec* %34 to i8*
  %40 = bitcast %struct.iio_chan_spec* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 8, i1 false)
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i64 %44
  %46 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %45, i32 0, i32 0
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %48, i64 %50
  %52 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %51, i32 0, i32 1
  store i32 %47, i32* %52, align 4
  br label %53

53:                                               ; preds = %30
  %54 = load i32, i32* %6, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %22

56:                                               ; preds = %22
  %57 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %58 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 0
  store %struct.iio_chan_spec* %57, %struct.iio_chan_spec** %59, align 8
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %18
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.ad5380_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_chan_spec* @kcalloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
