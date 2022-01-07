; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnss_device = type { i32 }
%struct.sirf_data = type { i32, i32, %struct.serdev_device* }
%struct.serdev_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to runtime resume: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gnss_device*)* @sirf_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_open(%struct.gnss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gnss_device*, align 8
  %4 = alloca %struct.sirf_data*, align 8
  %5 = alloca %struct.serdev_device*, align 8
  %6 = alloca i32, align 4
  store %struct.gnss_device* %0, %struct.gnss_device** %3, align 8
  %7 = load %struct.gnss_device*, %struct.gnss_device** %3, align 8
  %8 = call %struct.sirf_data* @gnss_get_drvdata(%struct.gnss_device* %7)
  store %struct.sirf_data* %8, %struct.sirf_data** %4, align 8
  %9 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %10 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %9, i32 0, i32 2
  %11 = load %struct.serdev_device*, %struct.serdev_device** %10, align 8
  store %struct.serdev_device* %11, %struct.serdev_device** %5, align 8
  %12 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %13 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %16 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %18 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %17, i32 0, i32 1
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %21 = call i32 @sirf_serdev_open(%struct.sirf_data* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %26 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %29 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %31 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %61

34:                                               ; preds = %1
  %35 = load %struct.serdev_device*, %struct.serdev_device** %5, align 8
  %36 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %35, i32 0, i32 0
  %37 = call i32 @pm_runtime_get_sync(i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.gnss_device*, %struct.gnss_device** %3, align 8
  %42 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %41, i32 0, i32 0
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.serdev_device*, %struct.serdev_device** %5, align 8
  %46 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %45, i32 0, i32 0
  %47 = call i32 @pm_runtime_put_noidle(i32* %46)
  br label %49

48:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %61

49:                                               ; preds = %40
  %50 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %51 = call i32 @sirf_serdev_close(%struct.sirf_data* %50)
  %52 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %53 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %52, i32 0, i32 1
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %56 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %58 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %49, %48, %24
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.sirf_data* @gnss_get_drvdata(%struct.gnss_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sirf_serdev_open(%struct.sirf_data*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @sirf_serdev_close(%struct.sirf_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
