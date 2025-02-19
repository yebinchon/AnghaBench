; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_ctx_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_ctx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_rw_ctx = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ib_qp = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.scatterlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdma_rw_ctx_destroy(%struct.rdma_rw_ctx* %0, %struct.ib_qp* %1, i32 %2, %struct.scatterlist* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.rdma_rw_ctx*, align 8
  %8 = alloca %struct.ib_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rdma_rw_ctx* %0, %struct.rdma_rw_ctx** %7, align 8
  store %struct.ib_qp* %1, %struct.ib_qp** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %7, align 8
  %15 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %57 [
    i32 130, label %17
    i32 129, label %45
    i32 128, label %56
  ]

17:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %37, %17
  %19 = load i32, i32* %13, align 4
  %20 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %26 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %27 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %26, i32 0, i32 1
  %28 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %28, i32 0, i32 3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ib_mr_pool_put(%struct.ib_qp* %25, i32* %27, i32 %35)
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %18

40:                                               ; preds = %18
  %41 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %41, i32 0, i32 3
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = call i32 @kfree(%struct.TYPE_7__* %43)
  br label %59

45:                                               ; preds = %6
  %46 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call i32 @kfree(%struct.TYPE_7__* %49)
  %51 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %7, align 8
  %52 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = call i32 @kfree(%struct.TYPE_7__* %54)
  br label %59

56:                                               ; preds = %6
  br label %59

57:                                               ; preds = %6
  %58 = call i32 (...) @BUG()
  br label %59

59:                                               ; preds = %57, %56, %45, %40
  %60 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %61 = call i32 @sg_page(%struct.scatterlist* %60)
  %62 = call i64 @is_pci_p2pdma_page(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %66 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @pci_p2pdma_unmap_sg(i32 %71, %struct.scatterlist* %72, i32 %73, i32 %74)
  br label %86

76:                                               ; preds = %59
  %77 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %78 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @ib_dma_unmap_sg(%struct.TYPE_8__* %81, %struct.scatterlist* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %76, %64
  ret void
}

declare dso_local i32 @ib_mr_pool_put(%struct.ib_qp*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @is_pci_p2pdma_page(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @pci_p2pdma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @ib_dma_unmap_sg(%struct.TYPE_8__*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
