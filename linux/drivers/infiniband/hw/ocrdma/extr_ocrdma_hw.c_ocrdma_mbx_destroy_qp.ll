; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ocrdma_qp = type { %struct.TYPE_8__*, i64, %struct.TYPE_7__, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ocrdma_destroy_qp = type { i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_DELETE_QP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_destroy_qp(%struct.ocrdma_dev* %0, %struct.ocrdma_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ocrdma_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_destroy_qp*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ocrdma_qp* %1, %struct.ocrdma_qp** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %12 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %8, align 8
  %15 = load i32, i32* @OCRDMA_CMD_DELETE_QP, align 4
  %16 = call %struct.ocrdma_destroy_qp* @ocrdma_init_emb_mqe(i32 %15, i32 4)
  store %struct.ocrdma_destroy_qp* %16, %struct.ocrdma_destroy_qp** %7, align 8
  %17 = load %struct.ocrdma_destroy_qp*, %struct.ocrdma_destroy_qp** %7, align 8
  %18 = icmp ne %struct.ocrdma_destroy_qp* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %100

21:                                               ; preds = %2
  %22 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %23 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ocrdma_destroy_qp*, %struct.ocrdma_destroy_qp** %7, align 8
  %26 = getelementptr inbounds %struct.ocrdma_destroy_qp, %struct.ocrdma_destroy_qp* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %28 = load %struct.ocrdma_destroy_qp*, %struct.ocrdma_destroy_qp** %7, align 8
  %29 = bitcast %struct.ocrdma_destroy_qp* %28 to %struct.ocrdma_mqe*
  %30 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %27, %struct.ocrdma_mqe* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %35

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.ocrdma_destroy_qp*, %struct.ocrdma_destroy_qp** %7, align 8
  %37 = call i32 @kfree(%struct.ocrdma_destroy_qp* %36)
  %38 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %39 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %35
  %44 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %47 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %51 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %55 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dma_free_coherent(i32* %45, i32 %49, i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %43, %35
  %60 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %61 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %59
  %65 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %66 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %74 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %78 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %82 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dma_free_coherent(i32* %72, i32 %76, i32 %80, i32 %84)
  br label %86

86:                                               ; preds = %70, %64, %59
  %87 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %88 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %93 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91, %86
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %19
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.ocrdma_destroy_qp* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_destroy_qp*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
