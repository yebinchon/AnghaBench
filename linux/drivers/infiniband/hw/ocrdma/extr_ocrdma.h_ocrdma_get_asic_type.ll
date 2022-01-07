; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma.h_ocrdma_get_asic_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma.h_ocrdma_get_asic_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@OCRDMA_SLI_ASIC_ID_OFFSET = common dso_local global i32 0, align 4
@OCRDMA_SLI_ASIC_GEN_NUM_MASK = common dso_local global i32 0, align 4
@OCRDMA_SLI_ASIC_GEN_NUM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*)* @ocrdma_get_asic_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_get_asic_type(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %2, align 8
  %3 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %4 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 15
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %10 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %15 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OCRDMA_SLI_ASIC_ID_OFFSET, align 4
  %19 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %20 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %19, i32 0, i32 0
  %21 = call i32 @pci_read_config_dword(i32 %17, i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %13, %8, %1
  %23 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %24 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OCRDMA_SLI_ASIC_GEN_NUM_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @OCRDMA_SLI_ASIC_GEN_NUM_SHIFT, align 4
  %29 = ashr i32 %27, %28
  ret i32 %29
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
