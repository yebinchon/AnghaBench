; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_write_interrupt_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_write_interrupt_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tsl2563_chip = type { i32, i32, i32, i32, i32 }

@TSL2563_CMD = common dso_local global i32 0, align 4
@TSL2563_REG_INT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @tsl2563_write_interrupt_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2563_write_interrupt_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tsl2563_chip*, align 8
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.tsl2563_chip* @iio_priv(%struct.iio_dev* %13)
  store %struct.tsl2563_chip* %14, %struct.tsl2563_chip** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %16 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %5
  %21 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %22 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 48
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %67, label %26

26:                                               ; preds = %20
  %27 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %28 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, -49
  store i32 %30, i32* %28, align 4
  %31 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %32 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, 16
  store i32 %34, i32* %32, align 4
  %35 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %36 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %35, i32 0, i32 3
  %37 = call i32 @cancel_delayed_work(i32* %36)
  %38 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %39 = call i32 @tsl2563_get_power(%struct.tsl2563_chip* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %26
  %42 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %43 = call i32 @tsl2563_set_power(%struct.tsl2563_chip* %42, i32 1)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %99

47:                                               ; preds = %41
  %48 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %49 = call i32 @tsl2563_configure(%struct.tsl2563_chip* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %99

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %26
  %55 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %56 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TSL2563_CMD, align 4
  %59 = load i32, i32* @TSL2563_REG_INT, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %62 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @i2c_smbus_write_byte_data(i32 %57, i32 %60, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %66 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %54, %20, %5
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %98, label %70

70:                                               ; preds = %67
  %71 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %72 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 48
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %70
  %77 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %78 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, -49
  store i32 %80, i32* %78, align 4
  %81 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %82 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TSL2563_CMD, align 4
  %85 = load i32, i32* @TSL2563_REG_INT, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %88 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @i2c_smbus_write_byte_data(i32 %83, i32 %86, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %92 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %94 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %93, i32 0, i32 3
  %95 = load i32, i32* @HZ, align 4
  %96 = mul nsw i32 5, %95
  %97 = call i32 @schedule_delayed_work(i32* %94, i32 %96)
  br label %98

98:                                               ; preds = %76, %70, %67
  br label %99

99:                                               ; preds = %98, %52, %46
  %100 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %11, align 8
  %101 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %100, i32 0, i32 2
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %12, align 4
  ret i32 %103
}

declare dso_local %struct.tsl2563_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @tsl2563_get_power(%struct.tsl2563_chip*) #1

declare dso_local i32 @tsl2563_set_power(%struct.tsl2563_chip*, i32) #1

declare dso_local i32 @tsl2563_configure(%struct.tsl2563_chip*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
