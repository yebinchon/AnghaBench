; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-events.c_xadc_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-events.c_xadc_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.xadc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xadc*, i32)* }

@XADC_REG_CONF1 = common dso_local global i32 0, align 4
@XADC_CONF1_ALARM_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xadc_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xadc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %17 = call i32 @xadc_get_alarm_mask(%struct.iio_chan_spec* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %19 = call %struct.xadc* @iio_priv(%struct.iio_dev* %18)
  store %struct.xadc* %19, %struct.xadc** %12, align 8
  %20 = load %struct.xadc*, %struct.xadc** %12, align 8
  %21 = getelementptr inbounds %struct.xadc, %struct.xadc* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.xadc*, %struct.xadc** %12, align 8
  %28 = getelementptr inbounds %struct.xadc, %struct.xadc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %38

31:                                               ; preds = %5
  %32 = load i32, i32* %11, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.xadc*, %struct.xadc** %12, align 8
  %35 = getelementptr inbounds %struct.xadc, %struct.xadc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %31, %25
  %39 = load %struct.xadc*, %struct.xadc** %12, align 8
  %40 = getelementptr inbounds %struct.xadc, %struct.xadc* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.xadc*, i32)*, i32 (%struct.xadc*, i32)** %42, align 8
  %44 = load %struct.xadc*, %struct.xadc** %12, align 8
  %45 = load %struct.xadc*, %struct.xadc** %12, align 8
  %46 = getelementptr inbounds %struct.xadc, %struct.xadc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %43(%struct.xadc* %44, i32 %47)
  %49 = load %struct.xadc*, %struct.xadc** %12, align 8
  %50 = load i32, i32* @XADC_REG_CONF1, align 4
  %51 = call i32 @_xadc_read_adc_reg(%struct.xadc* %49, i32 %50, i32* %13)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  br label %93

55:                                               ; preds = %38
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* @XADC_CONF1_ALARM_MASK, align 4
  %58 = load i32, i32* %13, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %13, align 4
  %60 = load %struct.xadc*, %struct.xadc** %12, align 8
  %61 = getelementptr inbounds %struct.xadc, %struct.xadc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 240
  %64 = shl i32 %63, 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %13, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %13, align 4
  %68 = load %struct.xadc*, %struct.xadc** %12, align 8
  %69 = getelementptr inbounds %struct.xadc, %struct.xadc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 8
  %72 = lshr i32 %71, 3
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %13, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %13, align 4
  %76 = load %struct.xadc*, %struct.xadc** %12, align 8
  %77 = getelementptr inbounds %struct.xadc, %struct.xadc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, 7
  %80 = shl i32 %79, 1
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %13, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %55
  %88 = load %struct.xadc*, %struct.xadc** %12, align 8
  %89 = load i32, i32* @XADC_REG_CONF1, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @_xadc_write_adc_reg(%struct.xadc* %88, i32 %89, i32 %90)
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %87, %55
  br label %93

93:                                               ; preds = %92, %54
  %94 = load %struct.xadc*, %struct.xadc** %12, align 8
  %95 = getelementptr inbounds %struct.xadc, %struct.xadc* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %15, align 4
  ret i32 %97
}

declare dso_local i32 @xadc_get_alarm_mask(%struct.iio_chan_spec*) #1

declare dso_local %struct.xadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_xadc_read_adc_reg(%struct.xadc*, i32, i32*) #1

declare dso_local i32 @_xadc_write_adc_reg(%struct.xadc*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
