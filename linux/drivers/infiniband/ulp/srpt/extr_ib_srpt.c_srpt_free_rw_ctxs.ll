; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_free_rw_ctxs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_free_rw_ctxs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_rdma_ch = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.srpt_send_ioctx = type { i32, %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx, i32 }
%struct.srpt_rw_ctx = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srpt_rdma_ch*, %struct.srpt_send_ioctx*)* @srpt_free_rw_ctxs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srpt_free_rw_ctxs(%struct.srpt_rdma_ch* %0, %struct.srpt_send_ioctx* %1) #0 {
  %3 = alloca %struct.srpt_rdma_ch*, align 8
  %4 = alloca %struct.srpt_send_ioctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.srpt_rw_ctx*, align 8
  store %struct.srpt_rdma_ch* %0, %struct.srpt_rdma_ch** %3, align 8
  store %struct.srpt_send_ioctx* %1, %struct.srpt_send_ioctx** %4, align 8
  %8 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %9 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %8, i32 0, i32 3
  %10 = call i32 @target_reverse_dma_direction(i32* %9)
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %49, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %14 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %11
  %18 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %19 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %18, i32 0, i32 1
  %20 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %20, i64 %22
  store %struct.srpt_rw_ctx* %23, %struct.srpt_rw_ctx** %7, align 8
  %24 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %7, align 8
  %25 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %24, i32 0, i32 2
  %26 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %27 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %30 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %7, align 8
  %35 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %7, align 8
  %38 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @rdma_rw_ctx_destroy(i32* %25, i32 %28, i32 %33, i32 %36, i32 %39, i32 %40)
  %42 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %7, align 8
  %46 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @target_free_sgl(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %17
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %11

52:                                               ; preds = %11
  %53 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %54 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %53, i32 0, i32 1
  %55 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %54, align 8
  %56 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %57 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %56, i32 0, i32 2
  %58 = icmp ne %struct.srpt_rw_ctx* %55, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %61 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %60, i32 0, i32 1
  %62 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %61, align 8
  %63 = call i32 @kfree(%struct.srpt_rw_ctx* %62)
  br label %64

64:                                               ; preds = %59, %52
  ret void
}

declare dso_local i32 @target_reverse_dma_direction(i32*) #1

declare dso_local i32 @rdma_rw_ctx_destroy(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @target_free_sgl(i32, i32) #1

declare dso_local i32 @kfree(%struct.srpt_rw_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
