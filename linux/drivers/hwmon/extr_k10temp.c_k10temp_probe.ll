; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_k10temp.c_k10temp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_k10temp.c_k10temp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tctl_offset = type { i32, i32, i32 }
%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.k10temp_data = type { i32, i32, i32, i32, i32, %struct.pci_dev* }

@force = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"unreliable CPU thermal sensor; monitoring disabled\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"unreliable CPU thermal sensor; check erratum 319\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@read_htcreg_nb_f15 = common dso_local global i32 0, align 4
@read_tempreg_nb_f15 = common dso_local global i32 0, align 4
@read_tempreg_nb_f17 = common dso_local global i32 0, align 4
@read_htcreg_pci = common dso_local global i32 0, align 4
@read_tempreg_pci = common dso_local global i32 0, align 4
@tctl_offset_table = common dso_local global %struct.tctl_offset* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"k10temp\00", align 1
@k10temp_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @k10temp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k10temp_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.k10temp_data*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tctl_offset*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call i32 @has_erratum_319(%struct.pci_dev* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load i32, i32* @force, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %121

26:                                               ; preds = %18
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = call i32 @dev_warn(%struct.device* %27, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.k10temp_data* @devm_kzalloc(%struct.device* %30, i32 32, i32 %31)
  store %struct.k10temp_data* %32, %struct.k10temp_data** %8, align 8
  %33 = load %struct.k10temp_data*, %struct.k10temp_data** %8, align 8
  %34 = icmp ne %struct.k10temp_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %121

38:                                               ; preds = %29
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load %struct.k10temp_data*, %struct.k10temp_data** %8, align 8
  %41 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %40, i32 0, i32 5
  store %struct.pci_dev* %39, %struct.pci_dev** %41, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %43 = icmp eq i32 %42, 21
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 4
  %46 = and i32 %45, 240
  %47 = icmp eq i32 %46, 96
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 4
  %50 = and i32 %49, 240
  %51 = icmp eq i32 %50, 112
  br i1 %51, label %52, label %59

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @read_htcreg_nb_f15, align 4
  %54 = load %struct.k10temp_data*, %struct.k10temp_data** %8, align 8
  %55 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @read_tempreg_nb_f15, align 4
  %57 = load %struct.k10temp_data*, %struct.k10temp_data** %8, align 8
  %58 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  br label %81

59:                                               ; preds = %48, %38
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %61 = icmp eq i32 %60, 23
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %64 = icmp eq i32 %63, 24
  br i1 %64, label %65, label %73

65:                                               ; preds = %62, %59
  %66 = load %struct.k10temp_data*, %struct.k10temp_data** %8, align 8
  %67 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %66, i32 0, i32 0
  store i32 524288, i32* %67, align 8
  %68 = load i32, i32* @read_tempreg_nb_f17, align 4
  %69 = load %struct.k10temp_data*, %struct.k10temp_data** %8, align 8
  %70 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.k10temp_data*, %struct.k10temp_data** %8, align 8
  %72 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %80

73:                                               ; preds = %62
  %74 = load i32, i32* @read_htcreg_pci, align 4
  %75 = load %struct.k10temp_data*, %struct.k10temp_data** %8, align 8
  %76 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @read_tempreg_pci, align 4
  %78 = load %struct.k10temp_data*, %struct.k10temp_data** %8, align 8
  %79 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %73, %65
  br label %81

81:                                               ; preds = %80, %52
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %111, %81
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.tctl_offset*, %struct.tctl_offset** @tctl_offset_table, align 8
  %85 = call i32 @ARRAY_SIZE(%struct.tctl_offset* %84)
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %114

87:                                               ; preds = %82
  %88 = load %struct.tctl_offset*, %struct.tctl_offset** @tctl_offset_table, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.tctl_offset, %struct.tctl_offset* %88, i64 %90
  store %struct.tctl_offset* %91, %struct.tctl_offset** %11, align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %93 = load %struct.tctl_offset*, %struct.tctl_offset** %11, align 8
  %94 = getelementptr inbounds %struct.tctl_offset, %struct.tctl_offset* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %87
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 2), align 4
  %99 = load %struct.tctl_offset*, %struct.tctl_offset** %11, align 8
  %100 = getelementptr inbounds %struct.tctl_offset, %struct.tctl_offset* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @strstr(i32 %98, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.tctl_offset*, %struct.tctl_offset** %11, align 8
  %106 = getelementptr inbounds %struct.tctl_offset, %struct.tctl_offset* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.k10temp_data*, %struct.k10temp_data** %8, align 8
  %109 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %114

110:                                              ; preds = %97, %87
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %82

114:                                              ; preds = %104, %82
  %115 = load %struct.device*, %struct.device** %7, align 8
  %116 = load %struct.k10temp_data*, %struct.k10temp_data** %8, align 8
  %117 = load i32, i32* @k10temp_groups, align 4
  %118 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.k10temp_data* %116, i32 %117)
  store %struct.device* %118, %struct.device** %9, align 8
  %119 = load %struct.device*, %struct.device** %9, align 8
  %120 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %119)
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %114, %35, %21
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @has_erratum_319(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local %struct.k10temp_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.tctl_offset*) #1

declare dso_local i64 @strstr(i32, i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i8*, %struct.k10temp_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
