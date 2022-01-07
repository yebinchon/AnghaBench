; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.apds9960_data = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @apds9960_write_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9960_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.apds9960_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.apds9960_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.apds9960_data* %15, %struct.apds9960_data** %12, align 8
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %76 [
    i32 128, label %24
    i32 129, label %50
  ]

24:                                               ; preds = %5
  %25 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %26 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %80

33:                                               ; preds = %24
  %34 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %35 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @regmap_field_write(i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %80

43:                                               ; preds = %33
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %46 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @apds9960_set_power_state(%struct.apds9960_data* %47, i32 %48)
  br label %79

50:                                               ; preds = %5
  %51 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %52 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %80

59:                                               ; preds = %50
  %60 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %61 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @regmap_field_write(i32 %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %6, align 4
  br label %80

69:                                               ; preds = %59
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %72 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @apds9960_set_power_state(%struct.apds9960_data* %73, i32 %74)
  br label %79

76:                                               ; preds = %5
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %80

79:                                               ; preds = %69, %43
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %76, %67, %56, %41, %30
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.apds9960_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @apds9960_set_power_state(%struct.apds9960_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
