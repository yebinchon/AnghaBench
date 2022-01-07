; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5755.c_ad5755_update_dac_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5755.c_ad5755_update_dac_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad5755_state = type { i32* }

@AD5755_CTRL_REG_DAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32, i32)* @ad5755_update_dac_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5755_update_dac_ctrl(%struct.iio_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ad5755_state*, align 8
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.ad5755_state* @iio_priv(%struct.iio_dev* %11)
  store %struct.ad5755_state* %12, %struct.ad5755_state** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ad5755_state*, %struct.ad5755_state** %9, align 8
  %15 = getelementptr inbounds %struct.ad5755_state, %struct.ad5755_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %13
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %8, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.ad5755_state*, %struct.ad5755_state** %9, align 8
  %25 = getelementptr inbounds %struct.ad5755_state, %struct.ad5755_state* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %23
  store i32 %31, i32* %29, align 4
  %32 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @AD5755_CTRL_REG_DAC, align 4
  %35 = load %struct.ad5755_state*, %struct.ad5755_state** %9, align 8
  %36 = getelementptr inbounds %struct.ad5755_state, %struct.ad5755_state* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ad5755_write_ctrl_unlocked(%struct.iio_dev* %32, i32 %33, i32 %34, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local %struct.ad5755_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad5755_write_ctrl_unlocked(%struct.iio_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
