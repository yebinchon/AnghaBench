; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_i5k_amb.c_i5k_amb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_i5k_amb.c_i5k_amb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.i5k_amb_data = type { i32, i32, i32, i32, %struct.i5k_amb_data*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@dev_attr_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i5k_amb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5k_amb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i5k_amb_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.i5k_amb_data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.i5k_amb_data* %6, %struct.i5k_amb_data** %4, align 8
  %7 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %8 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @hwmon_device_unregister(i32 %9)
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @device_remove_file(i32* %12, i32* @dev_attr_name)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %32, %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %17 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %24 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %23, i32 0, i32 4
  %25 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %25, i64 %27
  %29 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @device_remove_file(i32* %22, i32* %30)
  br label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %14

35:                                               ; preds = %14
  %36 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %37 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %36, i32 0, i32 4
  %38 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %37, align 8
  %39 = call i32 @kfree(%struct.i5k_amb_data* %38)
  %40 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %41 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @iounmap(i32 %42)
  %44 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %45 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %48 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @release_mem_region(i32 %46, i32 %49)
  %51 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %52 = call i32 @kfree(%struct.i5k_amb_data* %51)
  ret i32 0
}

declare dso_local %struct.i5k_amb_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.i5k_amb_data*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
