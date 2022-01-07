; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_dfl_fpga_dev_ops_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_dfl_fpga_dev_ops_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.file_operations = type { i32 }
%struct.module = type { i32 }
%struct.dfl_feature_platform_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.module* }
%struct.TYPE_5__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dfl_fpga_dev_ops_register(%struct.platform_device* %0, %struct.file_operations* %1, %struct.module* %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.file_operations*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca %struct.dfl_feature_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.file_operations* %1, %struct.file_operations** %5, align 8
  store %struct.module* %2, %struct.module** %6, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.dfl_feature_platform_data* @dev_get_platdata(%struct.TYPE_6__* %9)
  store %struct.dfl_feature_platform_data* %10, %struct.dfl_feature_platform_data** %7, align 8
  %11 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %7, align 8
  %12 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %11, i32 0, i32 0
  %13 = load %struct.file_operations*, %struct.file_operations** %5, align 8
  %14 = call i32 @cdev_init(%struct.TYPE_7__* %12, %struct.file_operations* %13)
  %15 = load %struct.module*, %struct.module** %6, align 8
  %16 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %7, align 8
  %17 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  store %struct.module* %15, %struct.module** %18, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %7, align 8
  %23 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32* %21, i32** %25, align 8
  %26 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %7, align 8
  %27 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %26, i32 0, i32 0
  %28 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cdev_add(%struct.TYPE_7__* %27, i32 %31, i32 1)
  ret i32 %32
}

declare dso_local %struct.dfl_feature_platform_data* @dev_get_platdata(%struct.TYPE_6__*) #1

declare dso_local i32 @cdev_init(%struct.TYPE_7__*, %struct.file_operations*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
