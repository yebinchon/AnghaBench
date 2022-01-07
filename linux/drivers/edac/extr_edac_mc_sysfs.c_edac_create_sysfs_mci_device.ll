; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc_sysfs.c_edac_create_sysfs_mci_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc_sysfs.c_edac_create_sysfs_mci_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.TYPE_9__, %struct.dimm_info**, i32 }
%struct.TYPE_9__ = type { %struct.attribute_group**, i32, i32* }
%struct.dimm_info = type { %struct.TYPE_9__, i32 }
%struct.attribute_group = type { i32 }

@mci_attr_type = common dso_local global i32 0, align 4
@mci_pdev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mc%d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failure: create device %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"device %s created\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edac_create_sysfs_mci_device(%struct.mem_ctl_info* %0, %struct.attribute_group** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.attribute_group**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dimm_info*, align 8
  %9 = alloca %struct.dimm_info*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.attribute_group** %1, %struct.attribute_group*** %5, align 8
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %11 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  store i32* @mci_attr_type, i32** %12, align 8
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 1
  %15 = call i32 @device_initialize(%struct.TYPE_9__* %14)
  %16 = load i32, i32* @mci_pdev, align 4
  %17 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %18 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 8
  %20 = load %struct.attribute_group**, %struct.attribute_group*** %5, align 8
  %21 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %22 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store %struct.attribute_group** %20, %struct.attribute_group*** %23, align 8
  %24 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %25 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %24, i32 0, i32 1
  %26 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %27 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_set_name(%struct.TYPE_9__* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %31 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %30, i32 0, i32 1
  %32 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %33 = call i32 @dev_set_drvdata(%struct.TYPE_9__* %31, %struct.mem_ctl_info* %32)
  %34 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %35 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %34, i32 0, i32 1
  %36 = call i32 @pm_runtime_forbid(%struct.TYPE_9__* %35)
  %37 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %38 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %37, i32 0, i32 1
  %39 = call i32 @device_add(%struct.TYPE_9__* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %2
  %43 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %44 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %43, i32 0, i32 1
  %45 = call i32 @dev_name(%struct.TYPE_9__* %44)
  %46 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %48 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %47, i32 0, i32 1
  %49 = call i32 @put_device(%struct.TYPE_9__* %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %121

51:                                               ; preds = %2
  %52 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %53 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %52, i32 0, i32 1
  %54 = call i32 @dev_name(%struct.TYPE_9__* %53)
  %55 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %84, %51
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %59 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %56
  %63 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %64 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %63, i32 0, i32 2
  %65 = load %struct.dimm_info**, %struct.dimm_info*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.dimm_info*, %struct.dimm_info** %65, i64 %67
  %69 = load %struct.dimm_info*, %struct.dimm_info** %68, align 8
  store %struct.dimm_info* %69, %struct.dimm_info** %8, align 8
  %70 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %71 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %62
  br label %84

75:                                               ; preds = %62
  %76 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %77 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @edac_create_dimm_object(%struct.mem_ctl_info* %76, %struct.dimm_info* %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %90

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %74
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %56

87:                                               ; preds = %56
  %88 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %89 = call i32 @edac_create_debugfs_nodes(%struct.mem_ctl_info* %88)
  store i32 0, i32* %3, align 4
  br label %121

90:                                               ; preds = %82
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %113, %90
  %94 = load i32, i32* %6, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %98 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %97, i32 0, i32 2
  %99 = load %struct.dimm_info**, %struct.dimm_info*** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.dimm_info*, %struct.dimm_info** %99, i64 %101
  %103 = load %struct.dimm_info*, %struct.dimm_info** %102, align 8
  store %struct.dimm_info* %103, %struct.dimm_info** %9, align 8
  %104 = load %struct.dimm_info*, %struct.dimm_info** %9, align 8
  %105 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %96
  br label %113

109:                                              ; preds = %96
  %110 = load %struct.dimm_info*, %struct.dimm_info** %9, align 8
  %111 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %110, i32 0, i32 0
  %112 = call i32 @device_unregister(%struct.TYPE_9__* %111)
  br label %113

113:                                              ; preds = %109, %108
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %6, align 4
  br label %93

116:                                              ; preds = %93
  %117 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %118 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %117, i32 0, i32 1
  %119 = call i32 @device_unregister(%struct.TYPE_9__* %118)
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %116, %87, %42
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @device_initialize(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_9__*, %struct.mem_ctl_info*) #1

declare dso_local i32 @pm_runtime_forbid(%struct.TYPE_9__*) #1

declare dso_local i32 @device_add(%struct.TYPE_9__*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_9__*) #1

declare dso_local i32 @put_device(%struct.TYPE_9__*) #1

declare dso_local i32 @edac_create_dimm_object(%struct.mem_ctl_info*, %struct.dimm_info*, i32) #1

declare dso_local i32 @edac_create_debugfs_nodes(%struct.mem_ctl_info*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
