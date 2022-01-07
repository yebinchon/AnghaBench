; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device_sysfs.c_edac_device_create_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device_sysfs.c_edac_device_create_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, %struct.kobject, %struct.TYPE_2__* }
%struct.kobject = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"idx=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to add sysfs attribs\0A\00", align 1
@EDAC_DEVICE_SYMLINK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"sysfs_create_link() returned err= %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"edac_device_create_instances() returned err= %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"create-instances done, idx=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edac_device_create_sysfs(%struct.edac_device_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %3, align 8
  %6 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %6, i32 0, i32 1
  store %struct.kobject* %7, %struct.kobject** %5, align 8
  %8 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %9 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %13 = call i32 @edac_device_add_main_sysfs_attributes(%struct.edac_device_ctl_info* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.kobject*, %struct.kobject** %5, align 8
  %20 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %21 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* @EDAC_DEVICE_SYMLINK, align 4
  %25 = call i32 @sysfs_create_link(%struct.kobject* %19, i32* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %49

31:                                               ; preds = %18
  %32 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %33 = call i32 @edac_device_create_instances(%struct.edac_device_ctl_info* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %44

39:                                               ; preds = %31
  %40 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %41 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, ...) @edac_dbg(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  store i32 0, i32* %2, align 4
  br label %54

44:                                               ; preds = %36
  %45 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %46 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %45, i32 0, i32 1
  %47 = load i32, i32* @EDAC_DEVICE_SYMLINK, align 4
  %48 = call i32 @sysfs_remove_link(%struct.kobject* %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %28
  %50 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %51 = call i32 @edac_device_remove_main_sysfs_attributes(%struct.edac_device_ctl_info* %50)
  br label %52

52:                                               ; preds = %49, %16
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %39
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local i32 @edac_device_add_main_sysfs_attributes(%struct.edac_device_ctl_info*) #1

declare dso_local i32 @sysfs_create_link(%struct.kobject*, i32*, i32) #1

declare dso_local i32 @edac_device_create_instances(%struct.edac_device_ctl_info*) #1

declare dso_local i32 @sysfs_remove_link(%struct.kobject*, i32) #1

declare dso_local i32 @edac_device_remove_main_sysfs_attributes(%struct.edac_device_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
