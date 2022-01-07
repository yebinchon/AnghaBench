; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_store_als_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_store_als_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.lm3533_als_attribute = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_als_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_als_attr(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.lm3533_als_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %10, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.lm3533_als_attribute* @to_lm3533_als_attr(%struct.device_attribute* %16)
  store %struct.lm3533_als_attribute* %17, %struct.lm3533_als_attribute** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @kstrtou8(i8* %18, i32 0, i32* %12)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %63

24:                                               ; preds = %4
  %25 = load %struct.lm3533_als_attribute*, %struct.lm3533_als_attribute** %11, align 8
  %26 = getelementptr inbounds %struct.lm3533_als_attribute, %struct.lm3533_als_attribute* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %52 [
    i32 130, label %28
    i32 129, label %38
    i32 128, label %45
  ]

28:                                               ; preds = %24
  %29 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %30 = load %struct.lm3533_als_attribute*, %struct.lm3533_als_attribute** %11, align 8
  %31 = getelementptr inbounds %struct.lm3533_als_attribute, %struct.lm3533_als_attribute* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.lm3533_als_attribute*, %struct.lm3533_als_attribute** %11, align 8
  %34 = getelementptr inbounds %struct.lm3533_als_attribute, %struct.lm3533_als_attribute* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @lm3533_als_set_target(%struct.iio_dev* %29, i32 %32, i32 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  br label %55

38:                                               ; preds = %24
  %39 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %40 = load %struct.lm3533_als_attribute*, %struct.lm3533_als_attribute** %11, align 8
  %41 = getelementptr inbounds %struct.lm3533_als_attribute, %struct.lm3533_als_attribute* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @lm3533_als_set_threshold(%struct.iio_dev* %39, i32 %42, i32 0, i32 %43)
  store i32 %44, i32* %13, align 4
  br label %55

45:                                               ; preds = %24
  %46 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %47 = load %struct.lm3533_als_attribute*, %struct.lm3533_als_attribute** %11, align 8
  %48 = getelementptr inbounds %struct.lm3533_als_attribute, %struct.lm3533_als_attribute* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @lm3533_als_set_threshold(%struct.iio_dev* %46, i32 %49, i32 1, i32 %50)
  store i32 %51, i32* %13, align 4
  br label %55

52:                                               ; preds = %24
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %52, %45, %38, %28
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %5, align 4
  br label %63

60:                                               ; preds = %55
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %58, %21
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.lm3533_als_attribute* @to_lm3533_als_attr(%struct.device_attribute*) #1

declare dso_local i64 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @lm3533_als_set_target(%struct.iio_dev*, i32, i32, i32) #1

declare dso_local i32 @lm3533_als_set_threshold(%struct.iio_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
