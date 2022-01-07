; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_invoke_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_invoke_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.tsl2772_chip = type { i32, i32, i32 }

@TSL2772_CHIP_WORKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @tsl2772_invoke_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2772_invoke_change(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.tsl2772_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %7 = call %struct.tsl2772_chip* @iio_priv(%struct.iio_dev* %6)
  store %struct.tsl2772_chip* %7, %struct.tsl2772_chip** %3, align 8
  %8 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %3, align 8
  %9 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %3, align 8
  %12 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %3, align 8
  %15 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TSL2772_CHIP_WORKING, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %22 = call i32 @tsl2772_chip_off(%struct.iio_dev* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %30

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %29 = call i32 @tsl2772_chip_on(%struct.iio_dev* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %3, align 8
  %32 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %31, i32 0, i32 2
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %3, align 8
  %35 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.tsl2772_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tsl2772_chip_off(%struct.iio_dev*) #1

declare dso_local i32 @tsl2772_chip_on(%struct.iio_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
