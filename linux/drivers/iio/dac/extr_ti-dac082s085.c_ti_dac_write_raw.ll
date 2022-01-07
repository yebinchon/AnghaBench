; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac082s085.c_ti_dac_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac082s085.c_ti_dac_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ti_dac_chip = type { i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ti_dac_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_dac_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ti_dac_chip*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ti_dac_chip* @iio_priv(%struct.iio_dev* %14)
  store %struct.ti_dac_chip* %15, %struct.ti_dac_chip** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %76 [
    i64 128, label %17
  ]

17:                                               ; preds = %5
  %18 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %19 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %81

29:                                               ; preds = %17
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %32 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 1, %33
  %35 = icmp sge i32 %30, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %81

42:                                               ; preds = %36
  %43 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %44 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %81

50:                                               ; preds = %42
  %51 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %52 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %51, i32 0, i32 2
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %55 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %56 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @WRITE_AND_UPDATE(i64 %57)
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @ti_dac_cmd(%struct.ti_dac_chip* %54, i32 %58, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %66 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %69 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %64, i32* %71, align 4
  br label %72

72:                                               ; preds = %63, %50
  %73 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %74 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %73, i32 0, i32 2
  %75 = call i32 @mutex_unlock(i32* %74)
  br label %79

76:                                               ; preds = %5
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %47, %39, %28
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.ti_dac_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ti_dac_cmd(%struct.ti_dac_chip*, i32, i32) #1

declare dso_local i32 @WRITE_AND_UPDATE(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
