; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_palmas_gpadc.c_palmas_gpadc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_palmas_gpadc.c_palmas_gpadc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.palmas_gpadc = type { i32, i64, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @palmas_gpadc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_gpadc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.palmas_gpadc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.iio_dev* @dev_to_iio_dev(i32* %6)
  store %struct.iio_dev* %7, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.palmas_gpadc* @iio_priv(%struct.iio_dev* %8)
  store %struct.palmas_gpadc* %9, %struct.palmas_gpadc** %4, align 8
  %10 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %11 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %16 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14, %1
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @device_wakeup_disable(i32* %21)
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %25 = call i32 @iio_device_unregister(%struct.iio_dev* %24)
  %26 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %27 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %30 = call i32 @free_irq(i32 %28, %struct.palmas_gpadc* %29)
  %31 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %32 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %37 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %40 = call i32 @free_irq(i32 %38, %struct.palmas_gpadc* %39)
  br label %41

41:                                               ; preds = %35, %23
  %42 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %43 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %48 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %51 = call i32 @free_irq(i32 %49, %struct.palmas_gpadc* %50)
  br label %52

52:                                               ; preds = %46, %41
  ret i32 0
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(i32*) #1

declare dso_local %struct.palmas_gpadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @device_wakeup_disable(i32*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.palmas_gpadc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
