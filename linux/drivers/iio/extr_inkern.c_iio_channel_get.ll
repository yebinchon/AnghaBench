; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_channel_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_channel_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_channel = type { i32 }
%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iio_channel* @iio_channel_get(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.iio_channel*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iio_channel*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i8* @dev_name(%struct.device* %11)
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi i8* [ %12, %10 ], [ null, %13 ]
  store i8* %15, i8** %6, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = icmp ne %struct.device* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call %struct.iio_channel* @of_iio_channel_get_by_name(i32 %21, i8* %22)
  store %struct.iio_channel* %23, %struct.iio_channel** %7, align 8
  %24 = load %struct.iio_channel*, %struct.iio_channel** %7, align 8
  %25 = icmp ne %struct.iio_channel* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load %struct.iio_channel*, %struct.iio_channel** %7, align 8
  store %struct.iio_channel* %27, %struct.iio_channel** %3, align 8
  br label %33

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %14
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call %struct.iio_channel* @iio_channel_get_sys(i8* %30, i8* %31)
  store %struct.iio_channel* %32, %struct.iio_channel** %3, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.iio_channel*, %struct.iio_channel** %3, align 8
  ret %struct.iio_channel* %34
}

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local %struct.iio_channel* @of_iio_channel_get_by_name(i32, i8*) #1

declare dso_local %struct.iio_channel* @iio_channel_get_sys(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
