; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_pa12203001.c_pa12203001_power_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_pa12203001.c_pa12203001_power_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.pa12203001_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @pa12203001_power_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pa12203001_power_chip(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pa12203001_data*, align 8
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.pa12203001_data* @iio_priv(%struct.iio_dev* %7)
  store %struct.pa12203001_data* %8, %struct.pa12203001_data** %5, align 8
  %9 = load %struct.pa12203001_data*, %struct.pa12203001_data** %5, align 8
  %10 = getelementptr inbounds %struct.pa12203001_data, %struct.pa12203001_data* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.pa12203001_data*, %struct.pa12203001_data** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pa12203001_als_enable(%struct.pa12203001_data* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.pa12203001_data*, %struct.pa12203001_data** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @pa12203001_px_enable(%struct.pa12203001_data* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %17
  %23 = load %struct.pa12203001_data*, %struct.pa12203001_data** %5, align 8
  %24 = getelementptr inbounds %struct.pa12203001_data, %struct.pa12203001_data* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local %struct.pa12203001_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pa12203001_als_enable(%struct.pa12203001_data*, i32) #1

declare dso_local i32 @pa12203001_px_enable(%struct.pa12203001_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
