; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5360.c_ad5360_update_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5360.c_ad5360_update_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad5360_state = type { i32 }

@AD5360_CMD_SPECIAL_FUNCTION = common dso_local global i32 0, align 4
@AD5360_REG_SF_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @ad5360_update_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5360_update_ctrl(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ad5360_state*, align 8
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.ad5360_state* @iio_priv(%struct.iio_dev* %9)
  store %struct.ad5360_state* %10, %struct.ad5360_state** %7, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ad5360_state*, %struct.ad5360_state** %7, align 8
  %16 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %6, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.ad5360_state*, %struct.ad5360_state** %7, align 8
  %22 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %26 = load i32, i32* @AD5360_CMD_SPECIAL_FUNCTION, align 4
  %27 = load i32, i32* @AD5360_REG_SF_CTRL, align 4
  %28 = load %struct.ad5360_state*, %struct.ad5360_state** %7, align 8
  %29 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ad5360_write_unlocked(%struct.iio_dev* %25, i32 %26, i32 %27, i32 %30, i32 0)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local %struct.ad5360_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad5360_write_unlocked(%struct.iio_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
