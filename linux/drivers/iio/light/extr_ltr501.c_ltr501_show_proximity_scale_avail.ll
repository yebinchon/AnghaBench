; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_show_proximity_scale_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_show_proximity_scale_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ltr501_data = type { %struct.ltr501_chip_info* }
%struct.ltr501_chip_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@LTR501_RESERVED_GAIN = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%d.%06d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ltr501_show_proximity_scale_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltr501_show_proximity_scale_avail(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ltr501_data*, align 8
  %8 = alloca %struct.ltr501_chip_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @dev_to_iio_dev(%struct.device* %11)
  %13 = call %struct.ltr501_data* @iio_priv(i32 %12)
  store %struct.ltr501_data* %13, %struct.ltr501_data** %7, align 8
  %14 = load %struct.ltr501_data*, %struct.ltr501_data** %7, align 8
  %15 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %14, i32 0, i32 0
  %16 = load %struct.ltr501_chip_info*, %struct.ltr501_chip_info** %15, align 8
  store %struct.ltr501_chip_info* %16, %struct.ltr501_chip_info** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %65, %3
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.ltr501_chip_info*, %struct.ltr501_chip_info** %8, align 8
  %20 = getelementptr inbounds %struct.ltr501_chip_info, %struct.ltr501_chip_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %17
  %24 = load %struct.ltr501_chip_info*, %struct.ltr501_chip_info** %8, align 8
  %25 = getelementptr inbounds %struct.ltr501_chip_info, %struct.ltr501_chip_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LTR501_RESERVED_GAIN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %65

35:                                               ; preds = %23
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i64, i64* @PAGE_SIZE, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %40, %42
  %44 = load %struct.ltr501_chip_info*, %struct.ltr501_chip_info** %8, align 8
  %45 = getelementptr inbounds %struct.ltr501_chip_info, %struct.ltr501_chip_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ltr501_chip_info*, %struct.ltr501_chip_info** %8, align 8
  %53 = getelementptr inbounds %struct.ltr501_chip_info, %struct.ltr501_chip_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @scnprintf(i8* %39, i64 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %51, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %35, %34
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %17

68:                                               ; preds = %17
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 10, i8* %73, align 1
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local %struct.ltr501_data* @iio_priv(i32) #1

declare dso_local i32 @dev_to_iio_dev(%struct.device*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
