; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci_sysfs.c_edac_pci_create_instance_kobj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci_sysfs.c_edac_pci_create_instance_kobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_pci_ctl_info = type { i32 }
%struct.kobject = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@edac_pci_top_main_kobj = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ktype_pci_instance = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"pci%d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to register instance pci%d\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Register instance 'pci%d' kobject\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edac_pci_ctl_info*, i32)* @edac_pci_create_instance_kobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edac_pci_create_instance_kobj(%struct.edac_pci_ctl_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edac_pci_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca i32, align 4
  store %struct.edac_pci_ctl_info* %0, %struct.edac_pci_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @edac_pci_top_main_kobj, align 4
  %10 = call %struct.kobject* @kobject_get(i32 %9)
  store %struct.kobject* %10, %struct.kobject** %6, align 8
  %11 = load %struct.kobject*, %struct.kobject** %6, align 8
  %12 = icmp ne %struct.kobject* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  %18 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %17, i32 0, i32 0
  %19 = load i32, i32* @edac_pci_top_main_kobj, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @kobject_init_and_add(i32* %18, i32* @ktype_pci_instance, i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @edac_pci_top_main_kobj, align 4
  %28 = call i32 @kobject_put(i32 %27)
  br label %36

29:                                               ; preds = %16
  %30 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  %31 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %30, i32 0, i32 0
  %32 = load i32, i32* @KOBJ_ADD, align 4
  %33 = call i32 @kobject_uevent(i32* %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i32, i8*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  store i32 0, i32* %3, align 4
  br label %38

36:                                               ; preds = %24, %13
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local %struct.kobject* @kobject_get(i32) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @kobject_put(i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
