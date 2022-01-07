; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-region.c_fme_region_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-region.c_fme_region_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.dfl_fme_region_pdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fpga_region = type { i32, %struct.dfl_fme_region_pdata* }
%struct.fpga_manager = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@fme_region_get_bridges = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"DFL FME FPGA Region probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fme_region_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fme_region_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dfl_fme_region_pdata*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.fpga_region*, align 8
  %7 = alloca %struct.fpga_manager*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.dfl_fme_region_pdata* @dev_get_platdata(%struct.device* %10)
  store %struct.dfl_fme_region_pdata* %11, %struct.dfl_fme_region_pdata** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.dfl_fme_region_pdata*, %struct.dfl_fme_region_pdata** %4, align 8
  %15 = getelementptr inbounds %struct.dfl_fme_region_pdata, %struct.dfl_fme_region_pdata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call %struct.fpga_manager* @fpga_mgr_get(i32* %17)
  store %struct.fpga_manager* %18, %struct.fpga_manager** %7, align 8
  %19 = load %struct.fpga_manager*, %struct.fpga_manager** %7, align 8
  %20 = call i64 @IS_ERR(%struct.fpga_manager* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EPROBE_DEFER, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %59

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.fpga_manager*, %struct.fpga_manager** %7, align 8
  %28 = load i32, i32* @fme_region_get_bridges, align 4
  %29 = call %struct.fpga_region* @devm_fpga_region_create(%struct.device* %26, %struct.fpga_manager* %27, i32 %28)
  store %struct.fpga_region* %29, %struct.fpga_region** %6, align 8
  %30 = load %struct.fpga_region*, %struct.fpga_region** %6, align 8
  %31 = icmp ne %struct.fpga_region* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %55

35:                                               ; preds = %25
  %36 = load %struct.dfl_fme_region_pdata*, %struct.dfl_fme_region_pdata** %4, align 8
  %37 = load %struct.fpga_region*, %struct.fpga_region** %6, align 8
  %38 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %37, i32 0, i32 1
  store %struct.dfl_fme_region_pdata* %36, %struct.dfl_fme_region_pdata** %38, align 8
  %39 = load %struct.fpga_manager*, %struct.fpga_manager** %7, align 8
  %40 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fpga_region*, %struct.fpga_region** %6, align 8
  %43 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.fpga_region*, %struct.fpga_region** %6, align 8
  %46 = call i32 @platform_set_drvdata(%struct.platform_device* %44, %struct.fpga_region* %45)
  %47 = load %struct.fpga_region*, %struct.fpga_region** %6, align 8
  %48 = call i32 @fpga_region_register(%struct.fpga_region* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  br label %55

52:                                               ; preds = %35
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = call i32 @dev_dbg(%struct.device* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %59

55:                                               ; preds = %51, %32
  %56 = load %struct.fpga_manager*, %struct.fpga_manager** %7, align 8
  %57 = call i32 @fpga_mgr_put(%struct.fpga_manager* %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %52, %22
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.dfl_fme_region_pdata* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.fpga_manager* @fpga_mgr_get(i32*) #1

declare dso_local i64 @IS_ERR(%struct.fpga_manager*) #1

declare dso_local %struct.fpga_region* @devm_fpga_region_create(%struct.device*, %struct.fpga_manager*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fpga_region*) #1

declare dso_local i32 @fpga_region_register(%struct.fpga_region*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @fpga_mgr_put(%struct.fpga_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
