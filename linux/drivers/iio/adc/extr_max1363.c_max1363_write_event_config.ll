; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.max1363_state = type { i32, i32 }

@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @max1363_write_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1363_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.max1363_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.max1363_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.max1363_state* %16, %struct.max1363_state** %12, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %24 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %27 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %5
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* %14, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %41 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %59

44:                                               ; preds = %33
  %45 = load i32, i32* %14, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @__max1363_check_event_mask(i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %101

52:                                               ; preds = %44
  %53 = load i32, i32* %14, align 4
  %54 = shl i32 1, %53
  %55 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %56 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %36
  br label %87

60:                                               ; preds = %5
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %68 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %86

71:                                               ; preds = %60
  %72 = load i32, i32* %14, align 4
  %73 = shl i32 1, %72
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @__max1363_check_event_mask(i32 %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %101

79:                                               ; preds = %71
  %80 = load i32, i32* %14, align 4
  %81 = shl i32 1, %80
  %82 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %83 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %79, %63
  br label %87

87:                                               ; preds = %86, %59
  %88 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %89 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %90 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.max1363_state*, %struct.max1363_state** %12, align 8
  %93 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %91, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @max1363_monitor_mode_update(%struct.max1363_state* %88, i32 %99)
  br label %101

101:                                              ; preds = %87, %78, %51
  %102 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %103 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %11, align 4
  ret i32 %105
}

declare dso_local %struct.max1363_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__max1363_check_event_mask(i32, i32) #1

declare dso_local i32 @max1363_monitor_mode_update(%struct.max1363_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
