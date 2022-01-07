; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ie31200_edac.c_how_many_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ie31200_edac.c_how_many_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@IE31200_CAPID0 = common dso_local global i64 0, align 8
@IE31200_CAPID0_PDCD = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [24 x i8] c"In single channel mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"In dual channel mode\0A\00", align 1
@IE31200_CAPID0_DDPCD = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"2 DIMMS per channel disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"2 DIMMS per channel enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @how_many_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @how_many_channels(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = load i64, i64* @IE31200_CAPID0, align 8
  %7 = add nsw i64 %6, 1
  %8 = call i32 @pci_read_config_byte(%struct.pci_dev* %5, i64 %7, i8* %4)
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @IE31200_CAPID0_PDCD, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %19

17:                                               ; preds = %1
  %18 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @IE31200_CAPID0_DDPCD, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %30

28:                                               ; preds = %19
  %29 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i8*) #1

declare dso_local i32 @edac_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
