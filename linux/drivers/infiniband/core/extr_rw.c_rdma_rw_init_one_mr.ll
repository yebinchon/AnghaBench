; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_init_one_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_init_one_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.rdma_rw_reg_ctx = type { %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.scatterlist = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_WR_REG_MR = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, i32, %struct.rdma_rw_reg_ctx*, %struct.scatterlist*, i32, i32)* @rdma_rw_init_one_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_rw_init_one_mr(%struct.ib_qp* %0, i32 %1, %struct.rdma_rw_reg_ctx* %2, %struct.scatterlist* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rdma_rw_reg_ctx*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.rdma_rw_reg_ctx* %2, %struct.rdma_rw_reg_ctx** %10, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %19 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %18, i32 0, i32 3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %24 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @rdma_rw_fr_page_list_len(i32 %22, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @min(i32 %27, i32 %28)
  store i32 %29, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %30 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %31 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %32 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %31, i32 0, i32 1
  %33 = call %struct.TYPE_12__* @ib_mr_pool_get(%struct.ib_qp* %30, i32* %32)
  %34 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %10, align 8
  %35 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %34, i32 0, i32 0
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %35, align 8
  %36 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %10, align 8
  %37 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = icmp ne %struct.TYPE_12__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %6
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %122

43:                                               ; preds = %6
  %44 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %10, align 8
  %45 = call i64 @rdma_rw_inv_key(%struct.rdma_rw_reg_ctx* %44)
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %16, align 4
  %50 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %10, align 8
  %51 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = call i32 @ib_map_mr_sg(%struct.TYPE_12__* %52, %struct.scatterlist* %53, i32 %54, i32* %13, i32 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %43
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59, %43
  %64 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %65 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %66 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %65, i32 0, i32 1
  %67 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %10, align 8
  %68 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = call i32 @ib_mr_pool_put(%struct.ib_qp* %64, i32* %66, %struct.TYPE_12__* %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %122

73:                                               ; preds = %59
  %74 = load i32, i32* @IB_WR_REG_MR, align 4
  %75 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %10, align 8
  %76 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  %79 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %10, align 8
  %80 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %10, align 8
  %83 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %84, align 8
  %85 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %86 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %10, align 8
  %87 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %90 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i64 @rdma_protocol_iwarp(i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %73
  %96 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %97 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %10, align 8
  %98 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %95, %73
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %16, align 4
  %105 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %10, align 8
  %106 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %105, i32 0, i32 0
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %10, align 8
  %111 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %10, align 8
  %114 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %113, i32 0, i32 0
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %10, align 8
  %119 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load i32, i32* %16, align 4
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %102, %63, %40
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32 @rdma_rw_fr_page_list_len(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.TYPE_12__* @ib_mr_pool_get(%struct.ib_qp*, i32*) #1

declare dso_local i64 @rdma_rw_inv_key(%struct.rdma_rw_reg_ctx*) #1

declare dso_local i32 @ib_map_mr_sg(%struct.TYPE_12__*, %struct.scatterlist*, i32, i32*, i32) #1

declare dso_local i32 @ib_mr_pool_put(%struct.ib_qp*, i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @rdma_protocol_iwarp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
