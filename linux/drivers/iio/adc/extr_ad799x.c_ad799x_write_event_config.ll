; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad799x_state = type { i32 }

@AD799X_CHANNEL_SHIFT = common dso_local global i32 0, align 4
@AD7998_ALERT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @ad799x_write_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad799x_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ad799x_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ad799x_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad799x_state* %15, %struct.ad799x_state** %12, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %6, align 4
  br label %77

22:                                               ; preds = %5
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = load i32, i32* @AD799X_CHANNEL_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load %struct.ad799x_state*, %struct.ad799x_state** %12, align 8
  %33 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %48

36:                                               ; preds = %22
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = load i32, i32* @AD799X_CHANNEL_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.ad799x_state*, %struct.ad799x_state** %12, align 8
  %45 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %36, %25
  %49 = load %struct.ad799x_state*, %struct.ad799x_state** %12, align 8
  %50 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AD799X_CHANNEL_SHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* @AD7998_ALERT_EN, align 4
  %57 = load %struct.ad799x_state*, %struct.ad799x_state** %12, align 8
  %58 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %68

61:                                               ; preds = %48
  %62 = load i32, i32* @AD7998_ALERT_EN, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.ad799x_state*, %struct.ad799x_state** %12, align 8
  %65 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %61, %55
  %69 = load %struct.ad799x_state*, %struct.ad799x_state** %12, align 8
  %70 = load %struct.ad799x_state*, %struct.ad799x_state** %12, align 8
  %71 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ad799x_write_config(%struct.ad799x_state* %69, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %75 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %74)
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %68, %20
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.ad799x_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ad799x_write_config(%struct.ad799x_state*, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
