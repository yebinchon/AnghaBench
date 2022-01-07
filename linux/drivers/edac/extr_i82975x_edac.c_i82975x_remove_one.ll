; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i82975x_edac.c_i82975x_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i82975x_edac.c_i82975x_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mem_ctl_info = type { %struct.i82975x_pvt* }
%struct.i82975x_pvt = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @i82975x_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i82975x_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i82975x_pvt*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = call %struct.mem_ctl_info* @edac_mc_del_mc(i32* %7)
  store %struct.mem_ctl_info* %8, %struct.mem_ctl_info** %3, align 8
  %9 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %10 = icmp eq %struct.mem_ctl_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 0
  %15 = load %struct.i82975x_pvt*, %struct.i82975x_pvt** %14, align 8
  store %struct.i82975x_pvt* %15, %struct.i82975x_pvt** %4, align 8
  %16 = load %struct.i82975x_pvt*, %struct.i82975x_pvt** %4, align 8
  %17 = getelementptr inbounds %struct.i82975x_pvt, %struct.i82975x_pvt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.i82975x_pvt*, %struct.i82975x_pvt** %4, align 8
  %22 = getelementptr inbounds %struct.i82975x_pvt, %struct.i82975x_pvt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @iounmap(i64 %23)
  br label %25

25:                                               ; preds = %20, %12
  %26 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %27 = call i32 @edac_mc_free(%struct.mem_ctl_info* %26)
  br label %28

28:                                               ; preds = %25, %11
  ret void
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local %struct.mem_ctl_info* @edac_mc_del_mc(i32*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
