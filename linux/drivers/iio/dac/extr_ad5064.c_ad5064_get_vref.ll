; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5064.c_ad5064_get_vref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5064.c_ad5064_get_vref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5064_state = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.iio_chan_spec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5064_state*, %struct.iio_chan_spec*)* @ad5064_get_vref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5064_get_vref(%struct.ad5064_state* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad5064_state*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32, align 4
  store %struct.ad5064_state* %0, %struct.ad5064_state** %4, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %5, align 8
  %7 = load %struct.ad5064_state*, %struct.ad5064_state** %4, align 8
  %8 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.ad5064_state*, %struct.ad5064_state** %4, align 8
  %13 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.ad5064_state*, %struct.ad5064_state** %4, align 8
  %19 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %29

25:                                               ; preds = %17
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i32 [ 0, %24 ], [ %28, %25 ]
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ad5064_state*, %struct.ad5064_state** %4, align 8
  %32 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regulator_get_voltage(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %29, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
