; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_group_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_group_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_group = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.device = type { i32, %struct.iommu_group* }
%struct.group_device = type { %struct.group_device*, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"iommu_group\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@IOMMU_GROUP_NOTIFY_ADD_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Adding to iommu group %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to add to iommu group %d: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_group_add_device(%struct.iommu_group* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_group*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.group_device*, align 8
  store %struct.iommu_group* %0, %struct.iommu_group** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.group_device* @kzalloc(i32 24, i32 %9)
  store %struct.group_device* %10, %struct.group_device** %8, align 8
  %11 = load %struct.group_device*, %struct.group_device** %8, align 8
  %12 = icmp ne %struct.group_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %168

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %struct.group_device*, %struct.group_device** %8, align 8
  %19 = getelementptr inbounds %struct.group_device, %struct.group_device* %18, i32 0, i32 2
  store %struct.device* %17, %struct.device** %19, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %23 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %22, i32 0, i32 6
  %24 = call i32 @sysfs_create_link(i32* %21, i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %158

28:                                               ; preds = %16
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = call i32 @kobject_name(i32* %31)
  %33 = call i8* (i32, i8*, i32, ...) @kasprintf(i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = bitcast i8* %33 to %struct.group_device*
  %35 = load %struct.group_device*, %struct.group_device** %8, align 8
  %36 = getelementptr inbounds %struct.group_device, %struct.group_device* %35, i32 0, i32 0
  store %struct.group_device* %34, %struct.group_device** %36, align 8
  br label %37

37:                                               ; preds = %65, %28
  %38 = load %struct.group_device*, %struct.group_device** %8, align 8
  %39 = getelementptr inbounds %struct.group_device, %struct.group_device* %38, i32 0, i32 0
  %40 = load %struct.group_device*, %struct.group_device** %39, align 8
  %41 = icmp ne %struct.group_device* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %154

45:                                               ; preds = %37
  %46 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %47 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 0
  %51 = load %struct.group_device*, %struct.group_device** %8, align 8
  %52 = getelementptr inbounds %struct.group_device, %struct.group_device* %51, i32 0, i32 0
  %53 = load %struct.group_device*, %struct.group_device** %52, align 8
  %54 = call i32 @sysfs_create_link_nowarn(i32 %48, i32* %50, %struct.group_device* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %45
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @EEXIST, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load %struct.group_device*, %struct.group_device** %8, align 8
  %67 = getelementptr inbounds %struct.group_device, %struct.group_device* %66, i32 0, i32 0
  %68 = load %struct.group_device*, %struct.group_device** %67, align 8
  %69 = call i32 @kfree(%struct.group_device* %68)
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = getelementptr inbounds %struct.device, %struct.device* %71, i32 0, i32 0
  %73 = call i32 @kobject_name(i32* %72)
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  %76 = call i8* (i32, i8*, i32, ...) @kasprintf(i32 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74)
  %77 = bitcast i8* %76 to %struct.group_device*
  %78 = load %struct.group_device*, %struct.group_device** %8, align 8
  %79 = getelementptr inbounds %struct.group_device, %struct.group_device* %78, i32 0, i32 0
  store %struct.group_device* %77, %struct.group_device** %79, align 8
  br label %37

80:                                               ; preds = %62, %57
  br label %149

81:                                               ; preds = %45
  %82 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %83 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @kobject_get(i32 %84)
  %86 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = getelementptr inbounds %struct.device, %struct.device* %87, i32 0, i32 1
  store %struct.iommu_group* %86, %struct.iommu_group** %88, align 8
  %89 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = call i32 @iommu_group_create_direct_mappings(%struct.iommu_group* %89, %struct.device* %90)
  %92 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %93 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %92, i32 0, i32 2
  %94 = call i32 @mutex_lock(i32* %93)
  %95 = load %struct.group_device*, %struct.group_device** %8, align 8
  %96 = getelementptr inbounds %struct.group_device, %struct.group_device* %95, i32 0, i32 1
  %97 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %98 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %97, i32 0, i32 5
  %99 = call i32 @list_add_tail(i32* %96, i32* %98)
  %100 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %101 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %81
  %105 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %106 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = call i32 @__iommu_attach_device(i64 %107, %struct.device* %108)
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %104, %81
  %111 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %112 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %111, i32 0, i32 2
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %133

117:                                              ; preds = %110
  %118 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %119 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %118, i32 0, i32 3
  %120 = load i32, i32* @IOMMU_GROUP_NOTIFY_ADD_DEVICE, align 4
  %121 = load %struct.device*, %struct.device** %5, align 8
  %122 = call i32 @blocking_notifier_call_chain(i32* %119, i32 %120, %struct.device* %121)
  %123 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %124 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = call i32 @trace_add_device_to_group(i32 %125, %struct.device* %126)
  %128 = load %struct.device*, %struct.device** %5, align 8
  %129 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %130 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @dev_info(%struct.device* %128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  store i32 0, i32* %3, align 4
  br label %168

133:                                              ; preds = %116
  %134 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %135 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %134, i32 0, i32 2
  %136 = call i32 @mutex_lock(i32* %135)
  %137 = load %struct.group_device*, %struct.group_device** %8, align 8
  %138 = getelementptr inbounds %struct.group_device, %struct.group_device* %137, i32 0, i32 1
  %139 = call i32 @list_del(i32* %138)
  %140 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %141 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %140, i32 0, i32 2
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load %struct.device*, %struct.device** %5, align 8
  %144 = getelementptr inbounds %struct.device, %struct.device* %143, i32 0, i32 1
  store %struct.iommu_group* null, %struct.iommu_group** %144, align 8
  %145 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %146 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @kobject_put(i32 %147)
  br label %149

149:                                              ; preds = %133, %80
  %150 = load %struct.group_device*, %struct.group_device** %8, align 8
  %151 = getelementptr inbounds %struct.group_device, %struct.group_device* %150, i32 0, i32 0
  %152 = load %struct.group_device*, %struct.group_device** %151, align 8
  %153 = call i32 @kfree(%struct.group_device* %152)
  br label %154

154:                                              ; preds = %149, %42
  %155 = load %struct.device*, %struct.device** %5, align 8
  %156 = getelementptr inbounds %struct.device, %struct.device* %155, i32 0, i32 0
  %157 = call i32 @sysfs_remove_link(i32* %156, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %158

158:                                              ; preds = %154, %27
  %159 = load %struct.group_device*, %struct.group_device** %8, align 8
  %160 = call i32 @kfree(%struct.group_device* %159)
  %161 = load %struct.device*, %struct.device** %5, align 8
  %162 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %163 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @dev_err(%struct.device* %161, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %164, i32 %165)
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %158, %117, %13
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.group_device* @kzalloc(i32, i32) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i8* @kasprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @kobject_name(i32*) #1

declare dso_local i32 @sysfs_create_link_nowarn(i32, i32*, %struct.group_device*) #1

declare dso_local i32 @kfree(%struct.group_device*) #1

declare dso_local i32 @kobject_get(i32) #1

declare dso_local i32 @iommu_group_create_direct_mappings(%struct.iommu_group*, %struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @__iommu_attach_device(i64, %struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.device*) #1

declare dso_local i32 @trace_add_device_to_group(i32, %struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kobject_put(i32) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
