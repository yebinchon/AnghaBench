; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-pm8xxx-xoadc.c_pm8xxx_get_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-pm8xxx-xoadc.c_pm8xxx_get_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8xxx_chan_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.pm8xxx_xoadc = type { i32, %struct.pm8xxx_chan_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pm8xxx_chan_info* (%struct.pm8xxx_xoadc*, i64)* @pm8xxx_get_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pm8xxx_chan_info* @pm8xxx_get_channel(%struct.pm8xxx_xoadc* %0, i64 %1) #0 {
  %3 = alloca %struct.pm8xxx_chan_info*, align 8
  %4 = alloca %struct.pm8xxx_xoadc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pm8xxx_chan_info*, align 8
  store %struct.pm8xxx_xoadc* %0, %struct.pm8xxx_xoadc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %4, align 8
  %11 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %8
  %15 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %4, align 8
  %16 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %15, i32 0, i32 1
  %17 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %17, i64 %19
  store %struct.pm8xxx_chan_info* %20, %struct.pm8xxx_chan_info** %7, align 8
  %21 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %7, align 8
  %22 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %7, align 8
  store %struct.pm8xxx_chan_info* %29, %struct.pm8xxx_chan_info** %3, align 8
  br label %35

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %8

34:                                               ; preds = %8
  store %struct.pm8xxx_chan_info* null, %struct.pm8xxx_chan_info** %3, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %3, align 8
  ret %struct.pm8xxx_chan_info* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
