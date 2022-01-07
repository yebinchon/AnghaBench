; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7300_edac.c_i7300_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7300_edac.c_i7300_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mem_ctl_info = type { i64 }
%struct.i7300_pvt = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@i7300_pci = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @i7300_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i7300_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load i64, i64* @i7300_pci, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* @i7300_pci, align 8
  %10 = call i32 @edac_pci_release_generic_ctl(i64 %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = call %struct.mem_ctl_info* @edac_mc_del_mc(i32* %13)
  store %struct.mem_ctl_info* %14, %struct.mem_ctl_info** %3, align 8
  %15 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %16 = icmp ne %struct.mem_ctl_info* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %31

18:                                               ; preds = %11
  %19 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %20 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.i7300_pvt*
  %23 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %4, align 8
  %25 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %26 = call i32 @i7300_put_devices(%struct.mem_ctl_info* %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @kfree(i8* %27)
  %29 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %30 = call i32 @edac_mc_free(%struct.mem_ctl_info* %29)
  br label %31

31:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @edac_pci_release_generic_ctl(i64) #1

declare dso_local %struct.mem_ctl_info* @edac_mc_del_mc(i32*) #1

declare dso_local i32 @i7300_put_devices(%struct.mem_ctl_info*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
