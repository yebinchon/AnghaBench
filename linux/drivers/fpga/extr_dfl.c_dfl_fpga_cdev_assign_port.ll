; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_dfl_fpga_cdev_assign_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_dfl_fpga_cdev_assign_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfl_fpga_cdev = type { i32, i32 }
%struct.platform_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@dfl_fpga_check_port_id = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dfl_fpga_cdev_assign_port(%struct.dfl_fpga_cdev* %0, i32 %1) #0 {
  %3 = alloca %struct.dfl_fpga_cdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  store %struct.dfl_fpga_cdev* %0, %struct.dfl_fpga_cdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.dfl_fpga_cdev*, %struct.dfl_fpga_cdev** %3, align 8
  %10 = getelementptr inbounds %struct.dfl_fpga_cdev, %struct.dfl_fpga_cdev* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.dfl_fpga_cdev*, %struct.dfl_fpga_cdev** %3, align 8
  %13 = load i32, i32* @dfl_fpga_check_port_id, align 4
  %14 = call %struct.platform_device* @__dfl_fpga_cdev_find_port(%struct.dfl_fpga_cdev* %12, i32* %4, i32 %13)
  store %struct.platform_device* %14, %struct.platform_device** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = icmp ne %struct.platform_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i64 @device_is_registered(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %41

26:                                               ; preds = %18
  %27 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %28 = call i32 @platform_device_add(%struct.platform_device* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %41

32:                                               ; preds = %26
  %33 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_get_platdata(i32* %34)
  %36 = call i32 @dfl_feature_dev_use_end(i32 %35)
  %37 = load %struct.dfl_fpga_cdev*, %struct.dfl_fpga_cdev** %3, align 8
  %38 = getelementptr inbounds %struct.dfl_fpga_cdev, %struct.dfl_fpga_cdev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %32, %31, %23
  %42 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @put_device(i32* %43)
  br label %45

45:                                               ; preds = %41, %17
  %46 = load %struct.dfl_fpga_cdev*, %struct.dfl_fpga_cdev** %3, align 8
  %47 = getelementptr inbounds %struct.dfl_fpga_cdev, %struct.dfl_fpga_cdev* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.platform_device* @__dfl_fpga_cdev_find_port(%struct.dfl_fpga_cdev*, i32*, i32) #1

declare dso_local i64 @device_is_registered(i32*) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @dfl_feature_dev_use_end(i32) #1

declare dso_local i32 @dev_get_platdata(i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
