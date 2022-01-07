; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_of-fpga-region.c_of_fpga_region_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_of-fpga-region.c_of_fpga_region_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.fpga_region = type { i32 }
%struct.fpga_manager = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@of_fpga_region_get_bridges = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fpga_region_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"FPGA Region probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @of_fpga_region_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_fpga_region_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.fpga_region*, align 8
  %7 = alloca %struct.fpga_manager*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call %struct.fpga_manager* @of_fpga_region_get_mgr(%struct.device_node* %14)
  store %struct.fpga_manager* %15, %struct.fpga_manager** %7, align 8
  %16 = load %struct.fpga_manager*, %struct.fpga_manager** %7, align 8
  %17 = call i64 @IS_ERR(%struct.fpga_manager* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EPROBE_DEFER, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %53

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.fpga_manager*, %struct.fpga_manager** %7, align 8
  %25 = load i32, i32* @of_fpga_region_get_bridges, align 4
  %26 = call %struct.fpga_region* @devm_fpga_region_create(%struct.device* %23, %struct.fpga_manager* %24, i32 %25)
  store %struct.fpga_region* %26, %struct.fpga_region** %6, align 8
  %27 = load %struct.fpga_region*, %struct.fpga_region** %6, align 8
  %28 = icmp ne %struct.fpga_region* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %49

32:                                               ; preds = %22
  %33 = load %struct.fpga_region*, %struct.fpga_region** %6, align 8
  %34 = call i32 @fpga_region_register(%struct.fpga_region* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %49

38:                                               ; preds = %32
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = load i32, i32* @fpga_region_of_match, align 4
  %41 = load %struct.fpga_region*, %struct.fpga_region** %6, align 8
  %42 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %41, i32 0, i32 0
  %43 = call i32 @of_platform_populate(%struct.device_node* %39, i32 %40, i32* null, i32* %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.fpga_region*, %struct.fpga_region** %6, align 8
  %46 = call i32 @platform_set_drvdata(%struct.platform_device* %44, %struct.fpga_region* %45)
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @dev_info(%struct.device* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %53

49:                                               ; preds = %37, %29
  %50 = load %struct.fpga_manager*, %struct.fpga_manager** %7, align 8
  %51 = call i32 @fpga_mgr_put(%struct.fpga_manager* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %38, %19
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.fpga_manager* @of_fpga_region_get_mgr(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.fpga_manager*) #1

declare dso_local %struct.fpga_region* @devm_fpga_region_create(%struct.device*, %struct.fpga_manager*, i32) #1

declare dso_local i32 @fpga_region_register(%struct.fpga_region*) #1

declare dso_local i32 @of_platform_populate(%struct.device_node*, i32, i32*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fpga_region*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @fpga_mgr_put(%struct.fpga_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
