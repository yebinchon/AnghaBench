; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-event.c_iio_ev_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-event.c_iio_ev_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iio_dev*, i32, i32, i32, i32)* }
%struct.iio_dev_attr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @iio_ev_state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_ev_state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.iio_dev_attr*, align 8
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
  %17 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %16)
  store %struct.iio_dev_attr* %17, %struct.iio_dev_attr** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strtobool(i8* %18, i32* %13)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %50

24:                                               ; preds = %4
  %25 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.iio_dev*, i32, i32, i32, i32)*, i32 (%struct.iio_dev*, i32, i32, i32, i32)** %28, align 8
  %30 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %31 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %11, align 8
  %32 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %11, align 8
  %35 = call i32 @iio_ev_attr_type(%struct.iio_dev_attr* %34)
  %36 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %11, align 8
  %37 = call i32 @iio_ev_attr_dir(%struct.iio_dev_attr* %36)
  %38 = load i32, i32* %13, align 4
  %39 = call i32 %29(%struct.iio_dev* %30, i32 %33, i32 %35, i32 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %24
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  br label %47

45:                                               ; preds = %24
  %46 = load i64, i64* %9, align 8
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi i64 [ %44, %42 ], [ %46, %45 ]
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %22
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @iio_ev_attr_type(%struct.iio_dev_attr*) #1

declare dso_local i32 @iio_ev_attr_dir(%struct.iio_dev_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
