; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_read_interrupt_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_read_interrupt_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tsl2563_chip = type { i32, i32 }

@TSL2563_CMD = common dso_local global i32 0, align 4
@TSL2563_REG_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32)* @tsl2563_read_interrupt_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2563_read_interrupt_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tsl2563_chip*, align 8
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = call %struct.tsl2563_chip* @iio_priv(%struct.iio_dev* %12)
  store %struct.tsl2563_chip* %13, %struct.tsl2563_chip** %10, align 8
  %14 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %10, align 8
  %15 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %10, align 8
  %18 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TSL2563_CMD, align 4
  %21 = load i32, i32* @TSL2563_REG_INT, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @i2c_smbus_read_byte_data(i32 %19, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %10, align 8
  %25 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %38

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, 48
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %31, %29
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.tsl2563_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
