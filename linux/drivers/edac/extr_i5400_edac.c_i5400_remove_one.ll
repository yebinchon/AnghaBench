; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5400_edac.c_i5400_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5400_edac.c_i5400_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mem_ctl_info = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@i5400_pci = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @i5400_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5400_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mem_ctl_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = load i64, i64* @i5400_pci, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* @i5400_pci, align 8
  %9 = call i32 @edac_pci_release_generic_ctl(i64 %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call %struct.mem_ctl_info* @edac_mc_del_mc(i32* %12)
  store %struct.mem_ctl_info* %13, %struct.mem_ctl_info** %3, align 8
  %14 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %15 = icmp ne %struct.mem_ctl_info* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %24

17:                                               ; preds = %10
  %18 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %19 = call i32 @i5400_put_devices(%struct.mem_ctl_info* %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = call i32 @pci_disable_device(%struct.pci_dev* %20)
  %22 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %23 = call i32 @edac_mc_free(%struct.mem_ctl_info* %22)
  br label %24

24:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @edac_pci_release_generic_ctl(i64) #1

declare dso_local %struct.mem_ctl_info* @edac_mc_del_mc(i32*) #1

declare dso_local i32 @i5400_put_devices(%struct.mem_ctl_info*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
