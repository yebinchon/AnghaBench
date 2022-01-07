; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_set_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau7802_state = type { i32, i32, i64 }

@NAU7802_REG_CTRL1 = common dso_local global i32 0, align 4
@NAU7802_CTRL1_GAINS_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nau7802_state*, i32)* @nau7802_set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau7802_set_gain(%struct.nau7802_state* %0, i32 %1) #0 {
  %3 = alloca %struct.nau7802_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nau7802_state* %0, %struct.nau7802_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nau7802_state*, %struct.nau7802_state** %3, align 8
  %7 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.nau7802_state*, %struct.nau7802_state** %3, align 8
  %10 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.nau7802_state*, %struct.nau7802_state** %3, align 8
  %12 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NAU7802_REG_CTRL1, align 4
  %15 = call i32 @i2c_smbus_read_byte_data(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.nau7802_state*, %struct.nau7802_state** %3, align 8
  %21 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NAU7802_REG_CTRL1, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NAU7802_CTRL1_GAINS_BITS, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @i2c_smbus_write_byte_data(i32 %22, i32 %23, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %19, %18
  %32 = load %struct.nau7802_state*, %struct.nau7802_state** %3, align 8
  %33 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
