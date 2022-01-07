; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_lp8788_adc.c_lp8788_iio_map_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_lp8788_adc.c_lp8788_iio_map_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_map = type { i32 }
%struct.iio_dev = type { i32 }
%struct.lp8788_platform_data = type { %struct.iio_map* }
%struct.lp8788_adc = type { %struct.iio_map* }

@lp8788_default_iio_maps = common dso_local global %struct.iio_map* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"iio map err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.lp8788_platform_data*, %struct.lp8788_adc*)* @lp8788_iio_map_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_iio_map_register(%struct.iio_dev* %0, %struct.lp8788_platform_data* %1, %struct.lp8788_adc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.lp8788_platform_data*, align 8
  %7 = alloca %struct.lp8788_adc*, align 8
  %8 = alloca %struct.iio_map*, align 8
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.lp8788_platform_data* %1, %struct.lp8788_platform_data** %6, align 8
  store %struct.lp8788_adc* %2, %struct.lp8788_adc** %7, align 8
  %10 = load %struct.lp8788_platform_data*, %struct.lp8788_platform_data** %6, align 8
  %11 = icmp ne %struct.lp8788_platform_data* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.lp8788_platform_data*, %struct.lp8788_platform_data** %6, align 8
  %14 = getelementptr inbounds %struct.lp8788_platform_data, %struct.lp8788_platform_data* %13, i32 0, i32 0
  %15 = load %struct.iio_map*, %struct.iio_map** %14, align 8
  %16 = icmp ne %struct.iio_map* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %3
  %18 = load %struct.iio_map*, %struct.iio_map** @lp8788_default_iio_maps, align 8
  br label %23

19:                                               ; preds = %12
  %20 = load %struct.lp8788_platform_data*, %struct.lp8788_platform_data** %6, align 8
  %21 = getelementptr inbounds %struct.lp8788_platform_data, %struct.lp8788_platform_data* %20, i32 0, i32 0
  %22 = load %struct.iio_map*, %struct.iio_map** %21, align 8
  br label %23

23:                                               ; preds = %19, %17
  %24 = phi %struct.iio_map* [ %18, %17 ], [ %22, %19 ]
  store %struct.iio_map* %24, %struct.iio_map** %8, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %26 = load %struct.iio_map*, %struct.iio_map** %8, align 8
  %27 = call i32 @iio_map_array_register(%struct.iio_dev* %25, %struct.iio_map* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %40

36:                                               ; preds = %23
  %37 = load %struct.iio_map*, %struct.iio_map** %8, align 8
  %38 = load %struct.lp8788_adc*, %struct.lp8788_adc** %7, align 8
  %39 = getelementptr inbounds %struct.lp8788_adc, %struct.lp8788_adc* %38, i32 0, i32 0
  store %struct.iio_map* %37, %struct.iio_map** %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %30
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @iio_map_array_register(%struct.iio_dev*, %struct.iio_map*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
