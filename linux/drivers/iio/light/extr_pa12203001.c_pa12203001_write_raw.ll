; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_pa12203001.c_pa12203001_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_pa12203001.c_pa12203001_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.pa12203001_data = type { i32 }

@PA12203001_REG_CFG0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pa12203001_scales = common dso_local global i32* null, align 8
@PA12203001_AFSR_SHIFT = common dso_local global i32 0, align 4
@PA12203001_AFSR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @pa12203001_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pa12203001_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.pa12203001_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.pa12203001_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.pa12203001_data* %18, %struct.pa12203001_data** %12, align 8
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %64 [
    i64 128, label %20
  ]

20:                                               ; preds = %5
  %21 = load %struct.pa12203001_data*, %struct.pa12203001_data** %12, align 8
  %22 = getelementptr inbounds %struct.pa12203001_data, %struct.pa12203001_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PA12203001_REG_CFG0, align 4
  %25 = call i32 @regmap_read(i32 %23, i32 %24, i32* %16)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %20
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %68

34:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %13, align 4
  %37 = load i32*, i32** @pa12203001_scales, align 8
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** @pa12203001_scales, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %41, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @PA12203001_AFSR_SHIFT, align 4
  %51 = shl i32 %49, %50
  store i32 %51, i32* %15, align 4
  %52 = load %struct.pa12203001_data*, %struct.pa12203001_data** %12, align 8
  %53 = getelementptr inbounds %struct.pa12203001_data, %struct.pa12203001_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PA12203001_REG_CFG0, align 4
  %56 = load i32, i32* @PA12203001_AFSR_MASK, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @regmap_update_bits(i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %68

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %35

63:                                               ; preds = %35
  br label %65

64:                                               ; preds = %5
  br label %65

65:                                               ; preds = %64, %63
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %65, %48, %31
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.pa12203001_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
