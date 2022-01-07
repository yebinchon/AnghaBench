; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_read_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_read_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i64 }
%struct.sca3000_state = type { i32*, i32 }

@SCA3000_REG_MODE_ADDR = common dso_local global i32 0, align 4
@SCA3000_REG_MODE_FREE_FALL_DETECT = common dso_local global i32 0, align 4
@SCA3000_REG_MODE_MODE_MASK = common dso_local global i32 0, align 4
@SCA3000_REG_MODE_MEAS_MODE_MOT_DET = common dso_local global i32 0, align 4
@SCA3000_REG_CTRL_SEL_MD_CTRL = common dso_local global i32 0, align 4
@sca3000_addresses = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32)* @sca3000_read_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_read_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sca3000_state*, align 8
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.sca3000_state* @iio_priv(%struct.iio_dev* %11)
  store %struct.sca3000_state* %12, %struct.sca3000_state** %9, align 8
  %13 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %14 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %17 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %18 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %16, i32 %17, i32 1)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %76

22:                                               ; preds = %4
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %72 [
    i32 130, label %26
    i32 131, label %38
    i32 129, label %38
    i32 128, label %38
  ]

26:                                               ; preds = %22
  %27 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %28 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SCA3000_REG_MODE_FREE_FALL_DETECT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %10, align 4
  br label %75

38:                                               ; preds = %22, %22, %22
  %39 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %40 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SCA3000_REG_MODE_MODE_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @SCA3000_REG_MODE_MEAS_MODE_MOT_DET, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %71

49:                                               ; preds = %38
  %50 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %51 = load i32, i32* @SCA3000_REG_CTRL_SEL_MD_CTRL, align 4
  %52 = call i32 @sca3000_read_ctrl_reg(%struct.sca3000_state* %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %76

56:                                               ; preds = %49
  %57 = load i32, i32* %10, align 4
  %58 = load i32**, i32*** @sca3000_addresses, align 8
  %59 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %60 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32*, i32** %58, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %57, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %56, %48
  br label %75

72:                                               ; preds = %22
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %72, %71, %26
  br label %76

76:                                               ; preds = %75, %55, %21
  %77 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %78 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local %struct.sca3000_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_data_short(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @sca3000_read_ctrl_reg(%struct.sca3000_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
