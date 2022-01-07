; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device_sysfs.c_edac_device_create_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device_sysfs.c_edac_device_create_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32 }
%struct.edac_device_instance = type { i32, i32 }
%struct.edac_device_block = type { i32, %struct.kobject, %struct.edac_dev_sysfs_block_attribute*, i32 }
%struct.kobject = type { i32 }
%struct.edac_dev_sysfs_block_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Instance '%s' inst_p=%p  block '%s'  block_p=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"block kobj=%p  block kobj->parent=%p\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ktype_block_ctrl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to register instance '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"creating block attrib='%s' attrib->%p to kobj=%p\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edac_device_ctl_info*, %struct.edac_device_instance*, %struct.edac_device_block*)* @edac_device_create_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edac_device_create_block(%struct.edac_device_ctl_info* %0, %struct.edac_device_instance* %1, %struct.edac_device_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.edac_device_ctl_info*, align 8
  %6 = alloca %struct.edac_device_instance*, align 8
  %7 = alloca %struct.edac_device_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.edac_dev_sysfs_block_attribute*, align 8
  %11 = alloca %struct.kobject*, align 8
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %5, align 8
  store %struct.edac_device_instance* %1, %struct.edac_device_instance** %6, align 8
  store %struct.edac_device_block* %2, %struct.edac_device_block** %7, align 8
  %12 = load %struct.edac_device_instance*, %struct.edac_device_instance** %6, align 8
  %13 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.kobject*
  %17 = load %struct.edac_device_instance*, %struct.edac_device_instance** %6, align 8
  %18 = load %struct.edac_device_block*, %struct.edac_device_block** %7, align 8
  %19 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.edac_device_block*, %struct.edac_device_block** %7, align 8
  %22 = call i32 (i32, i8*, %struct.kobject*, ...) @edac_dbg(i32 4, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.kobject* %16, %struct.edac_device_instance* %17, i32 %20, %struct.edac_device_block* %21)
  %23 = load %struct.edac_device_block*, %struct.edac_device_block** %7, align 8
  %24 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %23, i32 0, i32 1
  %25 = load %struct.edac_device_block*, %struct.edac_device_block** %7, align 8
  %26 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.kobject, %struct.kobject* %26, i32 0, i32 0
  %28 = call i32 (i32, i8*, %struct.kobject*, ...) @edac_dbg(i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.kobject* %24, i32* %27)
  %29 = load %struct.edac_device_block*, %struct.edac_device_block** %7, align 8
  %30 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %29, i32 0, i32 1
  %31 = call i32 @memset(%struct.kobject* %30, i32 0, i32 4)
  %32 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %33 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %32, i32 0, i32 0
  %34 = call %struct.kobject* @kobject_get(i32* %33)
  store %struct.kobject* %34, %struct.kobject** %11, align 8
  %35 = load %struct.kobject*, %struct.kobject** %11, align 8
  %36 = icmp ne %struct.kobject* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %115

40:                                               ; preds = %3
  %41 = load %struct.edac_device_block*, %struct.edac_device_block** %7, align 8
  %42 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %41, i32 0, i32 1
  %43 = load %struct.edac_device_instance*, %struct.edac_device_instance** %6, align 8
  %44 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %43, i32 0, i32 0
  %45 = load %struct.edac_device_block*, %struct.edac_device_block** %7, align 8
  %46 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kobject_init_and_add(%struct.kobject* %42, i32* @ktype_block_ctrl, i32* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %40
  %52 = load %struct.edac_device_block*, %struct.edac_device_block** %7, align 8
  %53 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to %struct.kobject*
  %57 = call i32 (i32, i8*, %struct.kobject*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), %struct.kobject* %56)
  %58 = load %struct.kobject*, %struct.kobject** %11, align 8
  %59 = call i32 @kobject_put(%struct.kobject* %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %115

62:                                               ; preds = %40
  %63 = load %struct.edac_device_block*, %struct.edac_device_block** %7, align 8
  %64 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %63, i32 0, i32 2
  %65 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %64, align 8
  store %struct.edac_dev_sysfs_block_attribute* %65, %struct.edac_dev_sysfs_block_attribute** %10, align 8
  %66 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %10, align 8
  %67 = icmp ne %struct.edac_dev_sysfs_block_attribute* %66, null
  br i1 %67, label %68, label %106

68:                                               ; preds = %62
  %69 = load %struct.edac_device_block*, %struct.edac_device_block** %7, align 8
  %70 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %68
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %100, %73
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.edac_device_block*, %struct.edac_device_block** %7, align 8
  %77 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %105

80:                                               ; preds = %74
  %81 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %10, align 8
  %82 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to %struct.kobject*
  %87 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %10, align 8
  %88 = load %struct.edac_device_block*, %struct.edac_device_block** %7, align 8
  %89 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %88, i32 0, i32 1
  %90 = call i32 (i32, i8*, %struct.kobject*, ...) @edac_dbg(i32 4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), %struct.kobject* %86, %struct.edac_dev_sysfs_block_attribute* %87, %struct.kobject* %89)
  %91 = load %struct.edac_device_block*, %struct.edac_device_block** %7, align 8
  %92 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %91, i32 0, i32 1
  %93 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %10, align 8
  %94 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %93, i32 0, i32 0
  %95 = call i32 @sysfs_create_file(%struct.kobject* %92, %struct.TYPE_2__* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %80
  br label %111

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  %103 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %10, align 8
  %104 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %103, i32 1
  store %struct.edac_dev_sysfs_block_attribute* %104, %struct.edac_dev_sysfs_block_attribute** %10, align 8
  br label %74

105:                                              ; preds = %74
  br label %106

106:                                              ; preds = %105, %68, %62
  %107 = load %struct.edac_device_block*, %struct.edac_device_block** %7, align 8
  %108 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %107, i32 0, i32 1
  %109 = load i32, i32* @KOBJ_ADD, align 4
  %110 = call i32 @kobject_uevent(%struct.kobject* %108, i32 %109)
  store i32 0, i32* %4, align 4
  br label %117

111:                                              ; preds = %98
  %112 = load %struct.edac_device_block*, %struct.edac_device_block** %7, align 8
  %113 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %112, i32 0, i32 1
  %114 = call i32 @kobject_put(%struct.kobject* %113)
  br label %115

115:                                              ; preds = %111, %51, %37
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %106
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @edac_dbg(i32, i8*, %struct.kobject*, ...) #1

declare dso_local i32 @memset(%struct.kobject*, i32, i32) #1

declare dso_local %struct.kobject* @kobject_get(i32*) #1

declare dso_local i32 @kobject_init_and_add(%struct.kobject*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

declare dso_local i32 @sysfs_create_file(%struct.kobject*, %struct.TYPE_2__*) #1

declare dso_local i32 @kobject_uevent(%struct.kobject*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
