; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci_sysfs.c_edac_pci_create_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci_sysfs.c_edac_pci_create_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_pci_ctl_info = type { i32, %struct.TYPE_2__*, %struct.kobject }
%struct.TYPE_2__ = type { i32 }
%struct.kobject = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"idx=%d\0A\00", align 1
@EDAC_PCI_SYMLINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"sysfs_create_link() returned err= %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edac_pci_create_sysfs(%struct.edac_pci_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.edac_pci_ctl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  store %struct.edac_pci_ctl_info* %0, %struct.edac_pci_ctl_info** %3, align 8
  %6 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %6, i32 0, i32 2
  store %struct.kobject* %7, %struct.kobject** %5, align 8
  %8 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %3, align 8
  %9 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call i32 (...) @edac_pci_main_kobj_setup()
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %3, align 8
  %19 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %3, align 8
  %20 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @edac_pci_create_instance_kobj(%struct.edac_pci_ctl_info* %18, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %43

26:                                               ; preds = %17
  %27 = load %struct.kobject*, %struct.kobject** %5, align 8
  %28 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %3, align 8
  %29 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* @EDAC_PCI_SYMLINK, align 4
  %33 = call i32 @sysfs_create_link(%struct.kobject* %27, i32* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %40

39:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %46

40:                                               ; preds = %36
  %41 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %3, align 8
  %42 = call i32 @edac_pci_unregister_sysfs_instance_kobj(%struct.edac_pci_ctl_info* %41)
  br label %43

43:                                               ; preds = %40, %25
  %44 = call i32 (...) @edac_pci_main_kobj_teardown()
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %39, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @edac_dbg(i32, i8*, i32) #1

declare dso_local i32 @edac_pci_main_kobj_setup(...) #1

declare dso_local i32 @edac_pci_create_instance_kobj(%struct.edac_pci_ctl_info*, i32) #1

declare dso_local i32 @sysfs_create_link(%struct.kobject*, i32*, i32) #1

declare dso_local i32 @edac_pci_unregister_sysfs_instance_kobj(%struct.edac_pci_ctl_info*) #1

declare dso_local i32 @edac_pci_main_kobj_teardown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
