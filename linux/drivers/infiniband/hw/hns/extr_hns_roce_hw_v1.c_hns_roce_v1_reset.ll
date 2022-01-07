; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32, %struct.device_node* }
%struct.device_node = type { %struct.fwnode_handle }
%struct.fwnode_handle = type { i32 }
%struct.fwnode_reference_args = type { %struct.fwnode_handle* }

@.str = private unnamed_addr constant [12 x i8] c"dsaf-handle\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"could not find dsaf-handle\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"cannot read data from DT or ACPI\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SLEEP_TIME_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32)* @hns_roce_v1_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v1_reset(%struct.hns_roce_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.fwnode_handle*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fwnode_reference_args, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 1
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %8, align 8
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = call i64 @dev_of_node(%struct.device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.device_node*, %struct.device_node** %8, align 8
  %24 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %24, %struct.device_node** %6, align 8
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = icmp ne %struct.device_node* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %78

32:                                               ; preds = %22
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = getelementptr inbounds %struct.device_node, %struct.device_node* %33, i32 0, i32 0
  store %struct.fwnode_handle* %34, %struct.fwnode_handle** %9, align 8
  br label %61

35:                                               ; preds = %2
  %36 = load %struct.device*, %struct.device** %7, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @is_acpi_device_node(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @acpi_node_get_property_reference(i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, %struct.fwnode_reference_args* %11)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %78

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %11, i32 0, i32 0
  %54 = load %struct.fwnode_handle*, %struct.fwnode_handle** %53, align 8
  store %struct.fwnode_handle* %54, %struct.fwnode_handle** %9, align 8
  br label %60

55:                                               ; preds = %35
  %56 = load %struct.device*, %struct.device** %7, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @ENXIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %78

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %32
  %62 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  %63 = call i32 @hns_dsaf_roce_reset(%struct.fwnode_handle* %62, i32 0)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %78

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* @SLEEP_TIME_INTERVAL, align 4
  %73 = call i32 @msleep(i32 %72)
  %74 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  %75 = call i32 @hns_dsaf_roce_reset(%struct.fwnode_handle* %74, i32 1)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %66, %55, %48, %27
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @dev_of_node(%struct.device*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @is_acpi_device_node(i32) #1

declare dso_local i32 @acpi_node_get_property_reference(i32, i8*, i32, %struct.fwnode_reference_args*) #1

declare dso_local i32 @hns_dsaf_roce_reset(%struct.fwnode_handle*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
