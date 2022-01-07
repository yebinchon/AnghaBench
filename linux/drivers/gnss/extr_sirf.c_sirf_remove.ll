; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32 }
%struct.sirf_data = type { i32, i32, i64, i32, i64 }

@CONFIG_PM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serdev_device*)* @sirf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirf_remove(%struct.serdev_device* %0) #0 {
  %2 = alloca %struct.serdev_device*, align 8
  %3 = alloca %struct.sirf_data*, align 8
  store %struct.serdev_device* %0, %struct.serdev_device** %2, align 8
  %4 = load %struct.serdev_device*, %struct.serdev_device** %2, align 8
  %5 = call %struct.sirf_data* @serdev_device_get_drvdata(%struct.serdev_device* %4)
  store %struct.sirf_data* %5, %struct.sirf_data** %3, align 8
  %6 = load %struct.sirf_data*, %struct.sirf_data** %3, align 8
  %7 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @gnss_deregister_device(i32 %8)
  %10 = load i32, i32* @CONFIG_PM, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.serdev_device*, %struct.serdev_device** %2, align 8
  %15 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %14, i32 0, i32 0
  %16 = call i32 @pm_runtime_disable(i32* %15)
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.serdev_device*, %struct.serdev_device** %2, align 8
  %19 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %18, i32 0, i32 0
  %20 = call i32 @sirf_runtime_suspend(i32* %19)
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.sirf_data*, %struct.sirf_data** %3, align 8
  %23 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.sirf_data*, %struct.sirf_data** %3, align 8
  %28 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sirf_data*, %struct.sirf_data** %3, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.sirf_data* %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.sirf_data*, %struct.sirf_data** %3, align 8
  %34 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.sirf_data*, %struct.sirf_data** %3, align 8
  %39 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regulator_disable(i32 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.sirf_data*, %struct.sirf_data** %3, align 8
  %44 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @gnss_put_device(i32 %45)
  ret void
}

declare dso_local %struct.sirf_data* @serdev_device_get_drvdata(%struct.serdev_device*) #1

declare dso_local i32 @gnss_deregister_device(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @sirf_runtime_suspend(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.sirf_data*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @gnss_put_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
