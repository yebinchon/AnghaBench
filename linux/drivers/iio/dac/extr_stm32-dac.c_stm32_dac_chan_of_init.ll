; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_stm32-dac.c_stm32_dac_chan_of_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_stm32-dac.c_stm32_dac_chan_of_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.iio_dev = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to read reg property\0A\00", align 1
@stm32_dac_channels = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid reg property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @stm32_dac_chan_of_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dac_chan_of_init(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = call i32 @of_property_read_u32(%struct.device_node* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %6)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 2
  %19 = call i32 @dev_err(%struct.TYPE_5__* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %61

21:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stm32_dac_channels, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %24)
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stm32_dac_channels, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %41

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %22

41:                                               ; preds = %36, %22
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stm32_dac_channels, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %43)
  %45 = icmp uge i32 %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 2
  %49 = call i32 @dev_err(%struct.TYPE_5__* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %61

52:                                               ; preds = %41
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stm32_dac_channels, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 1
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %58, align 8
  %59 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %52, %46, %16
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
