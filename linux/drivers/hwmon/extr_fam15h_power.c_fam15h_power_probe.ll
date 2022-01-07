; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fam15h_power.c_fam15h_power_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fam15h_power.c_fam15h_power_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.fam15h_power_data = type { i32**, i32, %struct.pci_dev* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fam15h_power\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @fam15h_power_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fam15h_power_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.fam15h_power_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call i32 @tweak_runavg_range(%struct.pci_dev* %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @should_load_on_this_node(%struct.pci_dev* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.fam15h_power_data* @devm_kzalloc(%struct.device* %21, i32 24, i32 %22)
  store %struct.fam15h_power_data* %23, %struct.fam15h_power_data** %6, align 8
  %24 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %6, align 8
  %25 = icmp ne %struct.fam15h_power_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %56

29:                                               ; preds = %20
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %6, align 8
  %32 = call i32 @fam15h_power_init_data(%struct.pci_dev* %30, %struct.fam15h_power_data* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %56

37:                                               ; preds = %29
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %6, align 8
  %40 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %39, i32 0, i32 2
  store %struct.pci_dev* %38, %struct.pci_dev** %40, align 8
  %41 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %6, align 8
  %42 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %41, i32 0, i32 1
  %43 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %6, align 8
  %44 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  store i32* %42, i32** %46, align 8
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %6, align 8
  %49 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %6, align 8
  %50 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  %53 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.fam15h_power_data* %48, i32** %52)
  store %struct.device* %53, %struct.device** %8, align 8
  %54 = load %struct.device*, %struct.device** %8, align 8
  %55 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %37, %35, %26, %17
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @tweak_runavg_range(%struct.pci_dev*) #1

declare dso_local i32 @should_load_on_this_node(%struct.pci_dev*) #1

declare dso_local %struct.fam15h_power_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @fam15h_power_init_data(%struct.pci_dev*, %struct.fam15h_power_data*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i8*, %struct.fam15h_power_data*, i32**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
