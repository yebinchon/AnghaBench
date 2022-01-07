; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90614.c_mlx90614_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90614.c_mlx90614_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mlx90614_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLX90614_CONST_RAW_EMISSIVITY_MAX = common dso_local global i32 0, align 4
@MLX90614_CONST_EMISSIVITY_RESOLUTION = common dso_local global i32 0, align 4
@MLX90614_EMISSIVITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @mlx90614_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx90614_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mlx90614_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.mlx90614_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.mlx90614_data* %15, %struct.mlx90614_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %90 [
    i64 129, label %17
    i64 128, label %60
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %23, %20, %17
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %93

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MLX90614_CONST_RAW_EMISSIVITY_MAX, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @MLX90614_CONST_EMISSIVITY_RESOLUTION, align 4
  %41 = sdiv i32 %39, %40
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %44 = call i32 @mlx90614_power_get(%struct.mlx90614_data* %43, i32 0)
  %45 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %46 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %49 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MLX90614_EMISSIVITY, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @mlx90614_write_word(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %55 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %58 = call i32 @mlx90614_power_put(%struct.mlx90614_data* %57)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %6, align 4
  br label %93

60:                                               ; preds = %5
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63, %60
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %93

69:                                               ; preds = %63
  %70 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %71 = call i32 @mlx90614_power_get(%struct.mlx90614_data* %70, i32 0)
  %72 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %73 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %72, i32 0, i32 0
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %76 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 %78, 100
  %80 = load i32, i32* %10, align 4
  %81 = sdiv i32 %80, 10000
  %82 = add nsw i32 %79, %81
  %83 = call i32 @mlx90614_iir_search(i32 %77, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %85 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %88 = call i32 @mlx90614_power_put(%struct.mlx90614_data* %87)
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %6, align 4
  br label %93

90:                                               ; preds = %5
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %69, %66, %35, %32
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.mlx90614_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mlx90614_power_get(%struct.mlx90614_data*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx90614_write_word(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx90614_power_put(%struct.mlx90614_data*) #1

declare dso_local i32 @mlx90614_iir_search(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
