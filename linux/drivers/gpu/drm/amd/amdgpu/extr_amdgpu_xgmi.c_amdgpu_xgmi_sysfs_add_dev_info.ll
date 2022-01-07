; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_xgmi.c_amdgpu_xgmi_sysfs_add_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_xgmi.c_amdgpu_xgmi_sysfs_add_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.amdgpu_hive_info = type { i32, i32*, %struct.amdgpu_device* }

@dev_attr_xgmi_device_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"XGMI: Failed to create device file xgmi_device_id\0A\00", align 1
@dev_attr_xgmi_error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to create xgmi_error\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"xgmi_hive_info\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"XGMI: Failed to create link to hive info\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"node%d\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"XGMI: Failed to create link from hive info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_hive_info*)* @amdgpu_xgmi_sysfs_add_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_xgmi_sysfs_add_dev_info(%struct.amdgpu_device* %0, %struct.amdgpu_hive_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_hive_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [10 x i8], align 1
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_hive_info* %1, %struct.amdgpu_hive_info** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = bitcast [10 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 10, i1 false)
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = call i32 @device_create_file(%struct.TYPE_6__* %11, i32* @dev_attr_xgmi_device_id)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = call i32 @dev_err(%struct.TYPE_6__* %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %94

21:                                               ; preds = %2
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call i32 @device_create_file(%struct.TYPE_6__* %24, i32* @dev_attr_xgmi_error)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %32 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %5, align 8
  %33 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %32, i32 0, i32 2
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %33, align 8
  %35 = icmp ne %struct.amdgpu_device* %31, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %5, align 8
  %42 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @sysfs_create_link(i32* %40, i32* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i32 @dev_err(%struct.TYPE_6__* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %87

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %30
  %54 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %55 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %5, align 8
  %56 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %5, align 8
  %60 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %67 = call i32 @sysfs_create_link(i32* %61, i32* %65, i8* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %53
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i32 @dev_err(%struct.TYPE_6__* %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %76

75:                                               ; preds = %53
  br label %92

76:                                               ; preds = %70
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @sysfs_remove_link(i32* %80, i32 %85)
  br label %87

87:                                               ; preds = %76, %47
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = call i32 @device_remove_file(%struct.TYPE_6__* %90, i32* @dev_attr_xgmi_device_id)
  br label %92

92:                                               ; preds = %87, %75
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @device_create_file(%struct.TYPE_6__*, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @sysfs_remove_link(i32*, i32) #2

declare dso_local i32 @device_remove_file(%struct.TYPE_6__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
