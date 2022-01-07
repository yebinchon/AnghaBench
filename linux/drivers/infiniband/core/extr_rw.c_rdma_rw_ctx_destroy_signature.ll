; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_ctx_destroy_signature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_ctx_destroy_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_rw_ctx = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ib_qp = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.scatterlist = type { i32 }

@RDMA_RW_SIG_MR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdma_rw_ctx_destroy_signature(%struct.rdma_rw_ctx* %0, %struct.ib_qp* %1, i32 %2, %struct.scatterlist* %3, i64 %4, %struct.scatterlist* %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.rdma_rw_ctx*, align 8
  %10 = alloca %struct.ib_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.rdma_rw_ctx* %0, %struct.rdma_rw_ctx** %9, align 8
  store %struct.ib_qp* %1, %struct.ib_qp** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.scatterlist* %5, %struct.scatterlist** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %17 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %9, align 8
  %18 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RDMA_RW_SIG_MR, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON_ONCE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %8
  br label %61

26:                                               ; preds = %8
  %27 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %28 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %29 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %28, i32 0, i32 1
  %30 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ib_mr_pool_put(%struct.ib_qp* %27, i32* %29, i32 %34)
  %36 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %9, align 8
  %37 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call i32 @kfree(%struct.TYPE_4__* %38)
  %40 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %41 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @ib_dma_unmap_sg(i32 %44, %struct.scatterlist* %45, i64 %46, i32 %47)
  %49 = load i64, i64* %15, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %26
  %52 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %53 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @ib_dma_unmap_sg(i32 %56, %struct.scatterlist* %57, i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %25, %51, %26
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ib_mr_pool_put(%struct.ib_qp*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @ib_dma_unmap_sg(i32, %struct.scatterlist*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
