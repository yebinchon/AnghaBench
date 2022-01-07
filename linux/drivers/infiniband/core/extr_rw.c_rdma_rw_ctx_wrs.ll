; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_ctx_wrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_ctx_wrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_rw_ctx = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.ib_send_wr }
%struct.ib_send_wr = type { i32, %struct.ib_cqe*, %struct.ib_send_wr*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.ib_send_wr }
%struct.TYPE_14__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.ib_send_wr }
%struct.TYPE_9__ = type { %struct.ib_send_wr }
%struct.TYPE_8__ = type { %struct.ib_send_wr }
%struct.ib_qp = type { i32 }
%struct.ib_cqe = type { i32 }

@IB_WR_RDMA_READ_WITH_INV = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_send_wr* @rdma_rw_ctx_wrs(%struct.rdma_rw_ctx* %0, %struct.ib_qp* %1, i32 %2, %struct.ib_cqe* %3, %struct.ib_send_wr* %4) #0 {
  %6 = alloca %struct.rdma_rw_ctx*, align 8
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_cqe*, align 8
  %10 = alloca %struct.ib_send_wr*, align 8
  %11 = alloca %struct.ib_send_wr*, align 8
  %12 = alloca %struct.ib_send_wr*, align 8
  %13 = alloca i32, align 4
  store %struct.rdma_rw_ctx* %0, %struct.rdma_rw_ctx** %6, align 8
  store %struct.ib_qp* %1, %struct.ib_qp** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_cqe* %3, %struct.ib_cqe** %9, align 8
  store %struct.ib_send_wr* %4, %struct.ib_send_wr** %10, align 8
  %14 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %109 [
    i32 129, label %17
    i32 131, label %17
    i32 130, label %82
    i32 128, label %100
  ]

17:                                               ; preds = %5, %5
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i32, i32* %13, align 4
  %20 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %18
  %25 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %25, i32 0, i32 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i64 %29
  %31 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %31, i32 0, i32 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IB_WR_RDMA_READ_WITH_INV, align 4
  %42 = icmp ne i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @rdma_rw_update_lkey(%struct.TYPE_14__* %30, i32 %43)
  br label %45

45:                                               ; preds = %24
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %18

48:                                               ; preds = %18
  %49 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %49, i32 0, i32 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %53, i32 0, i32 2
  %55 = load %struct.ib_send_wr*, %struct.ib_send_wr** %54, align 8
  %56 = icmp ne %struct.ib_send_wr* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %58, i32 0, i32 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  store %struct.ib_send_wr* %62, %struct.ib_send_wr** %11, align 8
  br label %70

63:                                               ; preds = %48
  %64 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %64, i32 0, i32 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store %struct.ib_send_wr* %69, %struct.ib_send_wr** %11, align 8
  br label %70

70:                                               ; preds = %63, %57
  %71 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %6, align 8
  %72 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %71, i32 0, i32 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store %struct.ib_send_wr* %81, %struct.ib_send_wr** %12, align 8
  br label %111

82:                                               ; preds = %5
  %83 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %6, align 8
  %84 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store %struct.ib_send_wr* %88, %struct.ib_send_wr** %11, align 8
  %89 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %6, align 8
  %94 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store %struct.ib_send_wr* %99, %struct.ib_send_wr** %12, align 8
  br label %111

100:                                              ; preds = %5
  %101 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %6, align 8
  %102 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store %struct.ib_send_wr* %104, %struct.ib_send_wr** %11, align 8
  %105 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %6, align 8
  %106 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  store %struct.ib_send_wr* %108, %struct.ib_send_wr** %12, align 8
  br label %111

109:                                              ; preds = %5
  %110 = call i32 (...) @BUG()
  br label %111

111:                                              ; preds = %109, %100, %82, %70
  %112 = load %struct.ib_send_wr*, %struct.ib_send_wr** %10, align 8
  %113 = icmp ne %struct.ib_send_wr* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.ib_send_wr*, %struct.ib_send_wr** %10, align 8
  %116 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %117 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %116, i32 0, i32 2
  store %struct.ib_send_wr* %115, %struct.ib_send_wr** %117, align 8
  br label %127

118:                                              ; preds = %111
  %119 = load %struct.ib_cqe*, %struct.ib_cqe** %9, align 8
  %120 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %121 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %120, i32 0, i32 1
  store %struct.ib_cqe* %119, %struct.ib_cqe** %121, align 8
  %122 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %123 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %124 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %118, %114
  %128 = load %struct.ib_send_wr*, %struct.ib_send_wr** %11, align 8
  ret %struct.ib_send_wr* %128
}

declare dso_local i32 @rdma_rw_update_lkey(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
