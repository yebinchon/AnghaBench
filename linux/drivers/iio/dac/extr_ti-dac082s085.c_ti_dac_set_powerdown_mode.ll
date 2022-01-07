; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac082s085.c_ti_dac_set_powerdown_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac082s085.c_ti_dac_set_powerdown_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ti_dac_chip = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32)* @ti_dac_set_powerdown_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_dac_set_powerdown_mode(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_dac_chip*, align 8
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.ti_dac_chip* @iio_priv(%struct.iio_dev* %10)
  store %struct.ti_dac_chip* %11, %struct.ti_dac_chip** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %8, align 8
  %13 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

18:                                               ; preds = %3
  %19 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %8, align 8
  %20 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %8, align 8
  %23 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @POWERDOWN(i32 %28)
  %30 = call i32 @ti_dac_cmd(%struct.ti_dac_chip* %27, i32 %29, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %39

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %8, align 8
  %38 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %33
  %40 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %8, align 8
  %41 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %17
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.ti_dac_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ti_dac_cmd(%struct.ti_dac_chip*, i32, i32) #1

declare dso_local i32 @POWERDOWN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
