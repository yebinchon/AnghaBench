; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_get_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_get_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29501_private = type { i32 }
%struct.iio_chan_spec = type { i32 }

@REG_DISTANCE = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@REG_AMBIENT_LIGHT = common dso_local global i32 0, align 4
@REG_PHASE = common dso_local global i32 0, align 4
@REG_EMITTER_DAC = common dso_local global i32 0, align 4
@REG_TEMPERATURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29501_private*, %struct.iio_chan_spec*, i32*)* @isl29501_get_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29501_get_raw(%struct.isl29501_private* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isl29501_private*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.isl29501_private* %0, %struct.isl29501_private** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %10 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %67 [
    i32 129, label %12
    i32 131, label %23
    i32 130, label %34
    i32 132, label %45
    i32 128, label %56
  ]

12:                                               ; preds = %3
  %13 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %14 = load i32, i32* @REG_DISTANCE, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @isl29501_register_read(%struct.isl29501_private* %13, i32 %14, i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %70

21:                                               ; preds = %12
  %22 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %22, i32* %4, align 4
  br label %70

23:                                               ; preds = %3
  %24 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %25 = load i32, i32* @REG_AMBIENT_LIGHT, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @isl29501_register_read(%struct.isl29501_private* %24, i32 %25, i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %70

32:                                               ; preds = %23
  %33 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %33, i32* %4, align 4
  br label %70

34:                                               ; preds = %3
  %35 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %36 = load i32, i32* @REG_PHASE, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @isl29501_register_read(%struct.isl29501_private* %35, i32 %36, i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %70

43:                                               ; preds = %34
  %44 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %44, i32* %4, align 4
  br label %70

45:                                               ; preds = %3
  %46 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %47 = load i32, i32* @REG_EMITTER_DAC, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @isl29501_register_read(%struct.isl29501_private* %46, i32 %47, i32* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %70

54:                                               ; preds = %45
  %55 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %55, i32* %4, align 4
  br label %70

56:                                               ; preds = %3
  %57 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %58 = load i32, i32* @REG_TEMPERATURE, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @isl29501_register_read(%struct.isl29501_private* %57, i32 %58, i32* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %70

65:                                               ; preds = %56
  %66 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %66, i32* %4, align 4
  br label %70

67:                                               ; preds = %3
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %65, %63, %54, %52, %43, %41, %32, %30, %21, %19
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @isl29501_register_read(%struct.isl29501_private*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
