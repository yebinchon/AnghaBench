; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma_configfs.c_cma_configfs_params_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma_configfs.c_cma_configfs_params_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.cma_device = type { i32 }
%struct.cma_dev_port_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@filter_by_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, %struct.cma_device**, %struct.cma_dev_port_group**)* @cma_configfs_params_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_configfs_params_get(%struct.config_item* %0, %struct.cma_device** %1, %struct.cma_dev_port_group** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.cma_device**, align 8
  %7 = alloca %struct.cma_dev_port_group**, align 8
  %8 = alloca %struct.cma_dev_port_group*, align 8
  %9 = alloca %struct.cma_device*, align 8
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store %struct.cma_device** %1, %struct.cma_device*** %6, align 8
  store %struct.cma_dev_port_group** %2, %struct.cma_dev_port_group*** %7, align 8
  %10 = load %struct.config_item*, %struct.config_item** %5, align 8
  %11 = call %struct.cma_dev_port_group* @to_dev_port_group(%struct.config_item* %10)
  store %struct.cma_dev_port_group* %11, %struct.cma_dev_port_group** %8, align 8
  %12 = load %struct.cma_dev_port_group*, %struct.cma_dev_port_group** %8, align 8
  %13 = icmp ne %struct.cma_dev_port_group* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load i32, i32* @filter_by_name, align 4
  %19 = load %struct.cma_dev_port_group*, %struct.cma_dev_port_group** %8, align 8
  %20 = getelementptr inbounds %struct.cma_dev_port_group, %struct.cma_dev_port_group* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.cma_device* @cma_enum_devices_by_ibdev(i32 %18, i32 %23)
  store %struct.cma_device* %24, %struct.cma_device** %9, align 8
  %25 = load %struct.cma_device*, %struct.cma_device** %9, align 8
  %26 = icmp ne %struct.cma_device* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %35

30:                                               ; preds = %17
  %31 = load %struct.cma_device*, %struct.cma_device** %9, align 8
  %32 = load %struct.cma_device**, %struct.cma_device*** %6, align 8
  store %struct.cma_device* %31, %struct.cma_device** %32, align 8
  %33 = load %struct.cma_dev_port_group*, %struct.cma_dev_port_group** %8, align 8
  %34 = load %struct.cma_dev_port_group**, %struct.cma_dev_port_group*** %7, align 8
  store %struct.cma_dev_port_group* %33, %struct.cma_dev_port_group** %34, align 8
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %27, %14
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.cma_dev_port_group* @to_dev_port_group(%struct.config_item*) #1

declare dso_local %struct.cma_device* @cma_enum_devices_by_ibdev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
