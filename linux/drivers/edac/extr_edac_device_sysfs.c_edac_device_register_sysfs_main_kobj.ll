; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device_sysfs.c_edac_device_register_sysfs_main_kobj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device_sysfs.c_edac_device_register_sysfs_main_kobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, i32, i32, %struct.bus_type* }
%struct.bus_type = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ktype_device_ctrl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to register '.../edac/%s'\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Registered '.../edac/%s' kobject\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edac_device_register_sysfs_main_kobj(%struct.edac_device_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  %4 = alloca %struct.bus_type*, align 8
  %5 = alloca i32, align 4
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %3, align 8
  %6 = call i32 (i32, i8*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = call %struct.bus_type* (...) @edac_get_sysfs_subsys()
  store %struct.bus_type* %7, %struct.bus_type** %4, align 8
  %8 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %9 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %10 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %9, i32 0, i32 3
  store %struct.bus_type* %8, %struct.bus_type** %10, align 8
  %11 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %12 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %11, i32 0, i32 2
  %13 = call i32 @memset(i32* %12, i32 0, i32 4)
  %14 = load i32, i32* @THIS_MODULE, align 4
  %15 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %16 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %18 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @try_module_get(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %57

25:                                               ; preds = %1
  %26 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %27 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %26, i32 0, i32 2
  %28 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %29 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %33 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kobject_init_and_add(i32* %27, i32* @ktype_device_ctrl, i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %40 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %52

43:                                               ; preds = %25
  %44 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %45 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %44, i32 0, i32 2
  %46 = load i32, i32* @KOBJ_ADD, align 4
  %47 = call i32 @kobject_uevent(i32* %45, i32 %46)
  %48 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %49 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @edac_dbg(i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  store i32 0, i32* %2, align 4
  br label %59

52:                                               ; preds = %38
  %53 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %54 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @module_put(i32 %55)
  br label %57

57:                                               ; preds = %52, %22
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %43
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local %struct.bus_type* @edac_get_sysfs_subsys(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
