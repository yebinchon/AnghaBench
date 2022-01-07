; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.h_dhar_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.h_dhar_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i32, i32, i32 }

@DRAM_CONT_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*)* @dhar_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhar_valid(%struct.amd64_pvt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd64_pvt*, align 8
  %4 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %3, align 8
  %5 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %6 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 21
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %11 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 48
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %16 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DRAM_CONT_BASE, align 4
  %19 = call i32 @amd64_read_pci_cfg(i32 %17, i32 %18, i32* %4)
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 1
  %22 = call i32 @BIT(i32 0)
  %23 = and i32 %21, %22
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %9, %1
  %25 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %26 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @BIT(i32 0)
  %29 = and i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %24, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @amd64_read_pci_cfg(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
