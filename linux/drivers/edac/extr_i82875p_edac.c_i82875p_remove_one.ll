; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i82875p_edac.c_i82875p_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i82875p_edac.c_i82875p_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mem_ctl_info = type { i64 }
%struct.i82875p_pvt = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@i82875p_pci = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @i82875p_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i82875p_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i82875p_pvt*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store %struct.i82875p_pvt* null, %struct.i82875p_pvt** %4, align 8
  %5 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load i64, i64* @i82875p_pci, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* @i82875p_pci, align 8
  %10 = call i32 @edac_pci_release_generic_ctl(i64 %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = call %struct.mem_ctl_info* @edac_mc_del_mc(i32* %13)
  store %struct.mem_ctl_info* %14, %struct.mem_ctl_info** %3, align 8
  %15 = icmp eq %struct.mem_ctl_info* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %48

17:                                               ; preds = %11
  %18 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %19 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.i82875p_pvt*
  store %struct.i82875p_pvt* %21, %struct.i82875p_pvt** %4, align 8
  %22 = load %struct.i82875p_pvt*, %struct.i82875p_pvt** %4, align 8
  %23 = getelementptr inbounds %struct.i82875p_pvt, %struct.i82875p_pvt* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.i82875p_pvt*, %struct.i82875p_pvt** %4, align 8
  %28 = getelementptr inbounds %struct.i82875p_pvt, %struct.i82875p_pvt* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @iounmap(i64 %29)
  br label %31

31:                                               ; preds = %26, %17
  %32 = load %struct.i82875p_pvt*, %struct.i82875p_pvt** %4, align 8
  %33 = getelementptr inbounds %struct.i82875p_pvt, %struct.i82875p_pvt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.i82875p_pvt*, %struct.i82875p_pvt** %4, align 8
  %38 = getelementptr inbounds %struct.i82875p_pvt, %struct.i82875p_pvt* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @pci_disable_device(i64 %39)
  %41 = load %struct.i82875p_pvt*, %struct.i82875p_pvt** %4, align 8
  %42 = getelementptr inbounds %struct.i82875p_pvt, %struct.i82875p_pvt* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @pci_dev_put(i64 %43)
  br label %45

45:                                               ; preds = %36, %31
  %46 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %47 = call i32 @edac_mc_free(%struct.mem_ctl_info* %46)
  br label %48

48:                                               ; preds = %45, %16
  ret void
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @edac_pci_release_generic_ctl(i64) #1

declare dso_local %struct.mem_ctl_info* @edac_mc_del_mc(i32*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_disable_device(i64) #1

declare dso_local i32 @pci_dev_put(i64) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
