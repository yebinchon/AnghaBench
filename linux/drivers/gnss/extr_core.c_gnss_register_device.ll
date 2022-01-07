; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_core.c_gnss_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_core.c_gnss_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnss_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@GNSS_FLAG_HAS_WRITE_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to add device: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnss_register_device(%struct.gnss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gnss_device*, align 8
  %4 = alloca i32, align 4
  store %struct.gnss_device* %0, %struct.gnss_device** %3, align 8
  %5 = load %struct.gnss_device*, %struct.gnss_device** %3, align 8
  %6 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @GNSS_FLAG_HAS_WRITE_RAW, align 4
  %13 = load %struct.gnss_device*, %struct.gnss_device** %3, align 8
  %14 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.gnss_device*, %struct.gnss_device** %3, align 8
  %19 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %18, i32 0, i32 1
  %20 = load %struct.gnss_device*, %struct.gnss_device** %3, align 8
  %21 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %20, i32 0, i32 0
  %22 = call i32 @cdev_device_add(i32* %19, i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.gnss_device*, %struct.gnss_device** %3, align 8
  %27 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %26, i32 0, i32 0
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @cdev_device_add(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
