; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci_sysfs.c_edac_pci_remove_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci_sysfs.c_edac_pci_remove_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_pci_ctl_info = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"index=%d\0A\00", align 1
@EDAC_PCI_SYMLINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"calling edac_pci_main_kobj_teardown()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @edac_pci_remove_sysfs(%struct.edac_pci_ctl_info* %0) #0 {
  %2 = alloca %struct.edac_pci_ctl_info*, align 8
  store %struct.edac_pci_ctl_info* %0, %struct.edac_pci_ctl_info** %2, align 8
  %3 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %2, align 8
  %4 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %2, align 8
  %8 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %7, i32 0, i32 0
  %9 = load i32, i32* @EDAC_PCI_SYMLINK, align 4
  %10 = call i32 @sysfs_remove_link(i32* %8, i32 %9)
  %11 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %2, align 8
  %12 = call i32 @edac_pci_unregister_sysfs_instance_kobj(%struct.edac_pci_ctl_info* %11)
  %13 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (...) @edac_pci_main_kobj_teardown()
  ret void
}

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local i32 @sysfs_remove_link(i32*, i32) #1

declare dso_local i32 @edac_pci_unregister_sysfs_instance_kobj(%struct.edac_pci_ctl_info*) #1

declare dso_local i32 @edac_pci_main_kobj_teardown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
