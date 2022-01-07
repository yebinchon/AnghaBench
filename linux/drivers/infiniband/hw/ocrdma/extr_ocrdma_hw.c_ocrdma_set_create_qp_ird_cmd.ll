; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_create_qp_ird_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_create_qp_ird_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_create_qp_req = type { i32* }
%struct.ocrdma_qp = type { i64, %struct.ocrdma_pd* }
%struct.ocrdma_pd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_dev = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }
%struct.TYPE_5__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ocrdma_hdr_wqe = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_TYPE_LKEY = common dso_local global i32 0, align 4
@OCRDMA_WQE_TYPE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_WQE_SIZE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_WQE_NXT_WQE_SIZE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_create_qp_req*, %struct.ocrdma_qp*)* @ocrdma_set_create_qp_ird_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_set_create_qp_ird_cmd(%struct.ocrdma_create_qp_req* %0, %struct.ocrdma_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_create_qp_req*, align 8
  %5 = alloca %struct.ocrdma_qp*, align 8
  %6 = alloca %struct.ocrdma_pd*, align 8
  %7 = alloca %struct.ocrdma_dev*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocrdma_hdr_wqe*, align 8
  %13 = alloca i32, align 4
  store %struct.ocrdma_create_qp_req* %0, %struct.ocrdma_create_qp_req** %4, align 8
  store %struct.ocrdma_qp* %1, %struct.ocrdma_qp** %5, align 8
  %14 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %15 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %14, i32 0, i32 1
  %16 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %15, align 8
  store %struct.ocrdma_pd* %16, %struct.ocrdma_pd** %6, align 8
  %17 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %6, align 8
  %18 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %20)
  store %struct.ocrdma_dev* %21, %struct.ocrdma_dev** %7, align 8
  %22 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %23 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.pci_dev*, %struct.pci_dev** %24, align 8
  store %struct.pci_dev* %25, %struct.pci_dev** %8, align 8
  store i32 0, i32* %9, align 4
  %26 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %27 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %31 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %36 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %37 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %120

42:                                               ; preds = %2
  %43 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i64 @dma_alloc_coherent(i32* %44, i32 %45, i32* %9, i32 %46)
  %48 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %49 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %51 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %120

57:                                               ; preds = %42
  %58 = load %struct.ocrdma_create_qp_req*, %struct.ocrdma_create_qp_req** %4, align 8
  %59 = getelementptr inbounds %struct.ocrdma_create_qp_req, %struct.ocrdma_create_qp_req* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %63 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @ocrdma_build_q_pages(i32* %61, i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %116, %57
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %73 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = sdiv i32 %71, %75
  %77 = icmp slt i32 %70, %76
  br i1 %77, label %78, label %119

78:                                               ; preds = %69
  %79 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %80 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %84 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %82, %86
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %81, %88
  %90 = inttoptr i64 %89 to %struct.ocrdma_hdr_wqe*
  store %struct.ocrdma_hdr_wqe* %90, %struct.ocrdma_hdr_wqe** %12, align 8
  %91 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %12, align 8
  %92 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %91, i32 0, i32 0
  store i32 0, i32* %92, align 4
  %93 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %12, align 8
  %94 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, 2
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @OCRDMA_TYPE_LKEY, align 4
  %98 = load i32, i32* @OCRDMA_WQE_TYPE_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %12, align 8
  %101 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* @OCRDMA_WQE_SIZE_SHIFT, align 4
  %105 = shl i32 8, %104
  %106 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %12, align 8
  %107 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* @OCRDMA_WQE_NXT_WQE_SIZE_SHIFT, align 4
  %111 = shl i32 8, %110
  %112 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %12, align 8
  %113 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %78
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %69

119:                                              ; preds = %69
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %54, %41
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @ocrdma_build_q_pages(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
