; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_show_als_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_show_als_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.lm3533_als_attribute = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_als_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_als_attr(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.lm3533_als_attribute*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %12)
  store %struct.iio_dev* %13, %struct.iio_dev** %8, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.lm3533_als_attribute* @to_lm3533_als_attr(%struct.device_attribute* %14)
  store %struct.lm3533_als_attribute* %15, %struct.lm3533_als_attribute** %9, align 8
  %16 = load %struct.lm3533_als_attribute*, %struct.lm3533_als_attribute** %9, align 8
  %17 = getelementptr inbounds %struct.lm3533_als_attribute, %struct.lm3533_als_attribute* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %46 [
    i32 131, label %19
    i32 130, label %25
    i32 129, label %34
    i32 128, label %40
  ]

19:                                               ; preds = %3
  %20 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %21 = load %struct.lm3533_als_attribute*, %struct.lm3533_als_attribute** %9, align 8
  %22 = getelementptr inbounds %struct.lm3533_als_attribute, %struct.lm3533_als_attribute* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @lm3533_als_get_hysteresis(%struct.iio_dev* %20, i32 %23, i32* %10)
  store i32 %24, i32* %11, align 4
  br label %49

25:                                               ; preds = %3
  %26 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %27 = load %struct.lm3533_als_attribute*, %struct.lm3533_als_attribute** %9, align 8
  %28 = getelementptr inbounds %struct.lm3533_als_attribute, %struct.lm3533_als_attribute* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.lm3533_als_attribute*, %struct.lm3533_als_attribute** %9, align 8
  %31 = getelementptr inbounds %struct.lm3533_als_attribute, %struct.lm3533_als_attribute* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lm3533_als_get_target(%struct.iio_dev* %26, i32 %29, i32 %32, i32* %10)
  store i32 %33, i32* %11, align 4
  br label %49

34:                                               ; preds = %3
  %35 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %36 = load %struct.lm3533_als_attribute*, %struct.lm3533_als_attribute** %9, align 8
  %37 = getelementptr inbounds %struct.lm3533_als_attribute, %struct.lm3533_als_attribute* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @lm3533_als_get_threshold(%struct.iio_dev* %35, i32 %38, i32 0, i32* %10)
  store i32 %39, i32* %11, align 4
  br label %49

40:                                               ; preds = %3
  %41 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %42 = load %struct.lm3533_als_attribute*, %struct.lm3533_als_attribute** %9, align 8
  %43 = getelementptr inbounds %struct.lm3533_als_attribute, %struct.lm3533_als_attribute* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @lm3533_als_get_threshold(%struct.iio_dev* %41, i32 %44, i32 1, i32* %10)
  store i32 %45, i32* %11, align 4
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @ENXIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %40, %34, %25, %19
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %59

54:                                               ; preds = %49
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @scnprintf(i8* %55, i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %52
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.lm3533_als_attribute* @to_lm3533_als_attr(%struct.device_attribute*) #1

declare dso_local i32 @lm3533_als_get_hysteresis(%struct.iio_dev*, i32, i32*) #1

declare dso_local i32 @lm3533_als_get_target(%struct.iio_dev*, i32, i32, i32*) #1

declare dso_local i32 @lm3533_als_get_threshold(%struct.iio_dev*, i32, i32, i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
