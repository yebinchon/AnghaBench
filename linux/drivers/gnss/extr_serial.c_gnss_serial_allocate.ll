; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_serial.c_gnss_serial_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_serial.c_gnss_serial_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnss_serial = type { %struct.gnss_device*, %struct.serdev_device* }
%struct.gnss_device = type { i32* }
%struct.serdev_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gnss_serial_gnss_ops = common dso_local global i32 0, align 4
@gnss_serial_serdev_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gnss_serial* @gnss_serial_allocate(%struct.serdev_device* %0, i64 %1) #0 {
  %3 = alloca %struct.gnss_serial*, align 8
  %4 = alloca %struct.serdev_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gnss_serial*, align 8
  %7 = alloca %struct.gnss_device*, align 8
  %8 = alloca i32, align 4
  store %struct.serdev_device* %0, %struct.serdev_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = add i64 16, %9
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gnss_serial* @kzalloc(i32 %11, i32 %12)
  store %struct.gnss_serial* %13, %struct.gnss_serial** %6, align 8
  %14 = load %struct.gnss_serial*, %struct.gnss_serial** %6, align 8
  %15 = icmp ne %struct.gnss_serial* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.gnss_serial* @ERR_PTR(i32 %18)
  store %struct.gnss_serial* %19, %struct.gnss_serial** %3, align 8
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %22 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %21, i32 0, i32 0
  %23 = call %struct.gnss_device* @gnss_allocate_device(i32* %22)
  store %struct.gnss_device* %23, %struct.gnss_device** %7, align 8
  %24 = load %struct.gnss_device*, %struct.gnss_device** %7, align 8
  %25 = icmp ne %struct.gnss_device* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %58

29:                                               ; preds = %20
  %30 = load %struct.gnss_device*, %struct.gnss_device** %7, align 8
  %31 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %30, i32 0, i32 0
  store i32* @gnss_serial_gnss_ops, i32** %31, align 8
  %32 = load %struct.gnss_device*, %struct.gnss_device** %7, align 8
  %33 = load %struct.gnss_serial*, %struct.gnss_serial** %6, align 8
  %34 = call i32 @gnss_set_drvdata(%struct.gnss_device* %32, %struct.gnss_serial* %33)
  %35 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %36 = load %struct.gnss_serial*, %struct.gnss_serial** %6, align 8
  %37 = getelementptr inbounds %struct.gnss_serial, %struct.gnss_serial* %36, i32 0, i32 1
  store %struct.serdev_device* %35, %struct.serdev_device** %37, align 8
  %38 = load %struct.gnss_device*, %struct.gnss_device** %7, align 8
  %39 = load %struct.gnss_serial*, %struct.gnss_serial** %6, align 8
  %40 = getelementptr inbounds %struct.gnss_serial, %struct.gnss_serial* %39, i32 0, i32 0
  store %struct.gnss_device* %38, %struct.gnss_device** %40, align 8
  %41 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %42 = load %struct.gnss_serial*, %struct.gnss_serial** %6, align 8
  %43 = call i32 @serdev_device_set_drvdata(%struct.serdev_device* %41, %struct.gnss_serial* %42)
  %44 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %45 = call i32 @serdev_device_set_client_ops(%struct.serdev_device* %44, i32* @gnss_serial_serdev_ops)
  %46 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %47 = call i32 @gnss_serial_parse_dt(%struct.serdev_device* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %29
  br label %53

51:                                               ; preds = %29
  %52 = load %struct.gnss_serial*, %struct.gnss_serial** %6, align 8
  store %struct.gnss_serial* %52, %struct.gnss_serial** %3, align 8
  br label %63

53:                                               ; preds = %50
  %54 = load %struct.gnss_serial*, %struct.gnss_serial** %6, align 8
  %55 = getelementptr inbounds %struct.gnss_serial, %struct.gnss_serial* %54, i32 0, i32 0
  %56 = load %struct.gnss_device*, %struct.gnss_device** %55, align 8
  %57 = call i32 @gnss_put_device(%struct.gnss_device* %56)
  br label %58

58:                                               ; preds = %53, %26
  %59 = load %struct.gnss_serial*, %struct.gnss_serial** %6, align 8
  %60 = call i32 @kfree(%struct.gnss_serial* %59)
  %61 = load i32, i32* %8, align 4
  %62 = call %struct.gnss_serial* @ERR_PTR(i32 %61)
  store %struct.gnss_serial* %62, %struct.gnss_serial** %3, align 8
  br label %63

63:                                               ; preds = %58, %51, %16
  %64 = load %struct.gnss_serial*, %struct.gnss_serial** %3, align 8
  ret %struct.gnss_serial* %64
}

declare dso_local %struct.gnss_serial* @kzalloc(i32, i32) #1

declare dso_local %struct.gnss_serial* @ERR_PTR(i32) #1

declare dso_local %struct.gnss_device* @gnss_allocate_device(i32*) #1

declare dso_local i32 @gnss_set_drvdata(%struct.gnss_device*, %struct.gnss_serial*) #1

declare dso_local i32 @serdev_device_set_drvdata(%struct.serdev_device*, %struct.gnss_serial*) #1

declare dso_local i32 @serdev_device_set_client_ops(%struct.serdev_device*, i32*) #1

declare dso_local i32 @gnss_serial_parse_dt(%struct.serdev_device*) #1

declare dso_local i32 @gnss_put_device(%struct.gnss_device*) #1

declare dso_local i32 @kfree(%struct.gnss_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
