; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ocrdma_srq = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ocrdma_destroy_srq = type { i32 }
%struct.ocrdma_mqe = type { i32 }

@OCRDMA_CMD_DELETE_SRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocrdma_mbx_destroy_srq(%struct.ocrdma_dev* %0, %struct.ocrdma_srq* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ocrdma_srq*, align 8
  %5 = alloca %struct.ocrdma_destroy_srq*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ocrdma_srq* %1, %struct.ocrdma_srq** %4, align 8
  %7 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load i32, i32* @OCRDMA_CMD_DELETE_SRQ, align 4
  %12 = call %struct.ocrdma_destroy_srq* @ocrdma_init_emb_mqe(i32 %11, i32 4)
  store %struct.ocrdma_destroy_srq* %12, %struct.ocrdma_destroy_srq** %5, align 8
  %13 = load %struct.ocrdma_destroy_srq*, %struct.ocrdma_destroy_srq** %5, align 8
  %14 = icmp ne %struct.ocrdma_destroy_srq* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %18 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ocrdma_destroy_srq*, %struct.ocrdma_destroy_srq** %5, align 8
  %21 = getelementptr inbounds %struct.ocrdma_destroy_srq, %struct.ocrdma_destroy_srq* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %23 = load %struct.ocrdma_destroy_srq*, %struct.ocrdma_destroy_srq** %5, align 8
  %24 = bitcast %struct.ocrdma_destroy_srq* %23 to %struct.ocrdma_mqe*
  %25 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %22, %struct.ocrdma_mqe* %24)
  %26 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %27 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %16
  %32 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %35 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %39 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %43 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dma_free_coherent(i32* %33, i32 %37, i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %31, %16
  %48 = load %struct.ocrdma_destroy_srq*, %struct.ocrdma_destroy_srq** %5, align 8
  %49 = call i32 @kfree(%struct.ocrdma_destroy_srq* %48)
  br label %50

50:                                               ; preds = %47, %15
  ret void
}

declare dso_local %struct.ocrdma_destroy_srq* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ocrdma_destroy_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
