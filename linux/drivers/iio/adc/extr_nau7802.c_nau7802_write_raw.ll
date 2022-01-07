; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.nau7802_state = type { i32*, i32, i32, i32, i32 }

@nau7802_sample_freq_avail = common dso_local global i32* null, align 8
@NAU7802_REG_CTRL2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @nau7802_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau7802_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.nau7802_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.nau7802_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.nau7802_state* %16, %struct.nau7802_state** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %86 [
    i64 128, label %18
    i64 129, label %45
  ]

18:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %41, %18
  %20 = load i32, i32* %13, align 4
  %21 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %22 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %29 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %27, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @nau7802_set_gain(%struct.nau7802_state* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %90

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  br label %19

44:                                               ; preds = %19
  br label %87

45:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %82, %45
  %47 = load i32, i32* %13, align 4
  %48 = load i32*, i32** @nau7802_sample_freq_avail, align 8
  %49 = call i32 @ARRAY_SIZE(i32* %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** @nau7802_sample_freq_avail, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %52, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %51
  %60 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %61 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %60, i32 0, i32 2
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %65 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %67 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %66, i32 0, i32 4
  store i32 0, i32* %67, align 4
  %68 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %69 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @NAU7802_REG_CTRL2, align 4
  %72 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %73 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @NAU7802_CTRL2_CRS(i32 %74)
  %76 = call i32 @i2c_smbus_write_byte_data(i32 %70, i32 %71, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %78 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %77, i32 0, i32 2
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %6, align 4
  br label %90

81:                                               ; preds = %51
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %46

85:                                               ; preds = %46
  br label %87

86:                                               ; preds = %5
  br label %87

87:                                               ; preds = %86, %85, %44
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %87, %59, %36
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.nau7802_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nau7802_set_gain(%struct.nau7802_state*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @NAU7802_CTRL2_CRS(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
