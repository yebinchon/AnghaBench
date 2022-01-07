; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.isl29018_chip = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IIO_LIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @isl29018_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29018_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.isl29018_chip*, align 8
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.isl29018_chip* @iio_priv(%struct.iio_dev* %13)
  store %struct.isl29018_chip* %14, %struct.isl29018_chip** %11, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.isl29018_chip*, %struct.isl29018_chip** %11, align 8
  %18 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.isl29018_chip*, %struct.isl29018_chip** %11, align 8
  %21 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %12, align 4
  br label %71

27:                                               ; preds = %5
  %28 = load i64, i64* %10, align 8
  switch i64 %28, label %69 [
    i64 130, label %29
    i64 129, label %43
    i64 128, label %57
  ]

29:                                               ; preds = %27
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IIO_LIGHT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.isl29018_chip*, %struct.isl29018_chip** %11, align 8
  %38 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.isl29018_chip*, %struct.isl29018_chip** %11, align 8
  %41 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %35, %29
  br label %70

43:                                               ; preds = %27
  %44 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %45 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IIO_LIGHT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load %struct.isl29018_chip*, %struct.isl29018_chip** %11, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @isl29018_set_integration_time(%struct.isl29018_chip* %53, i32 %54)
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %52, %49, %43
  br label %70

57:                                               ; preds = %27
  %58 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %59 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IIO_LIGHT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.isl29018_chip*, %struct.isl29018_chip** %11, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @isl29018_set_scale(%struct.isl29018_chip* %64, i32 %65, i32 %66)
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %63, %57
  br label %70

69:                                               ; preds = %27
  br label %70

70:                                               ; preds = %69, %68, %56, %42
  br label %71

71:                                               ; preds = %70, %24
  %72 = load %struct.isl29018_chip*, %struct.isl29018_chip** %11, align 8
  %73 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %72, i32 0, i32 2
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %12, align 4
  ret i32 %75
}

declare dso_local %struct.isl29018_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @isl29018_set_integration_time(%struct.isl29018_chip*, i32) #1

declare dso_local i32 @isl29018_set_scale(%struct.isl29018_chip*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
