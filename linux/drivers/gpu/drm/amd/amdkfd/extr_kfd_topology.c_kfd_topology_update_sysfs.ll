; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_topology.c_kfd_topology_update_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_topology.c_kfd_topology_update_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Creating topology SYSFS entries\0A\00", align 1
@sys_props = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@sysprops_type = common dso_local global i32 0, align 4
@kfd_device = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"topology\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"generation_id\00", align 1
@KFD_SYSFS_FILE_MODE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"system_properties\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kfd_topology_update_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_topology_update_sysfs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 1), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %50, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 1), align 8
  %8 = call i64 @kfd_alloc_struct(i64 %7)
  store i64 %8, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 1), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 1), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %53

14:                                               ; preds = %6
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 1), align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfd_device, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = call i32 @kobject_init_and_add(i64 %15, i32* @sysprops_type, i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %1, align 4
  br label %53

23:                                               ; preds = %14
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 1), align 8
  %25 = call i32 @kobject_create_and_add(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 3), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 3), align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %1, align 4
  br label %53

31:                                               ; preds = %23
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 2, i32 0), align 8
  %32 = load i8*, i8** @KFD_SYSFS_FILE_MODE, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 2, i32 1), align 8
  %33 = call i32 @sysfs_attr_init(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 2))
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 1), align 8
  %35 = call i32 @sysfs_create_file(i64 %34, %struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 2))
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %2, align 4
  store i32 %39, i32* %1, align 4
  br label %53

40:                                               ; preds = %31
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 0, i32 0), align 8
  %41 = load i8*, i8** @KFD_SYSFS_FILE_MODE, align 8
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 0, i32 1), align 8
  %42 = call i32 @sysfs_attr_init(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 0))
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 1), align 8
  %44 = call i32 @sysfs_create_file(i64 %43, %struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_props, i32 0, i32 0))
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %2, align 4
  store i32 %48, i32* %1, align 4
  br label %53

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %0
  %51 = call i32 (...) @kfd_remove_sysfs_node_tree()
  %52 = call i32 (...) @kfd_build_sysfs_node_tree()
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %50, %47, %38, %28, %21, %11
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i64 @kfd_alloc_struct(i64) #1

declare dso_local i32 @kobject_init_and_add(i64, i32*, i32*, i8*) #1

declare dso_local i32 @kobject_create_and_add(i8*, i64) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_5__*) #1

declare dso_local i32 @sysfs_create_file(i64, %struct.TYPE_5__*) #1

declare dso_local i32 @kfd_remove_sysfs_node_tree(...) #1

declare dso_local i32 @kfd_build_sysfs_node_tree(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
