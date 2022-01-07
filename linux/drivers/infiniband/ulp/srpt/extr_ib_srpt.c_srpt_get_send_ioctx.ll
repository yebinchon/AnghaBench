; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_get_send_ioctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_get_send_ioctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_send_ioctx = type { i32, %struct.TYPE_4__, %struct.TYPE_4__, i64, i64, i32, i32, %struct.srpt_rdma_ch* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.srpt_rdma_ch = type { %struct.srpt_send_ioctx**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SRPT_STATE_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.srpt_send_ioctx* (%struct.srpt_rdma_ch*)* @srpt_get_send_ioctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.srpt_send_ioctx* @srpt_get_send_ioctx(%struct.srpt_rdma_ch* %0) #0 {
  %2 = alloca %struct.srpt_send_ioctx*, align 8
  %3 = alloca %struct.srpt_rdma_ch*, align 8
  %4 = alloca %struct.srpt_send_ioctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.srpt_rdma_ch* %0, %struct.srpt_rdma_ch** %3, align 8
  %7 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %8 = icmp ne %struct.srpt_rdma_ch* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %13 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @sbitmap_queue_get(i32* %15, i32* %6)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.srpt_send_ioctx* null, %struct.srpt_send_ioctx** %2, align 8
  br label %63

20:                                               ; preds = %1
  %21 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %22 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %21, i32 0, i32 0
  %23 = load %struct.srpt_send_ioctx**, %struct.srpt_send_ioctx*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %23, i64 %25
  %27 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %26, align 8
  store %struct.srpt_send_ioctx* %27, %struct.srpt_send_ioctx** %4, align 8
  %28 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %29 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %28, i32 0, i32 7
  %30 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %29, align 8
  %31 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %32 = icmp ne %struct.srpt_rdma_ch* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load i32, i32* @SRPT_STATE_NEW, align 4
  %36 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %37 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %39 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @WARN_ON_ONCE(i32 %40)
  %42 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %43 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %45 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %47 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %49 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %48, i32 0, i32 1
  %50 = call i32 @memset(%struct.TYPE_4__* %49, i32 0, i32 8)
  %51 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %52 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %51, i32 0, i32 2
  %53 = call i32 @memset(%struct.TYPE_4__* %52, i32 0, i32 8)
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %56 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  %60 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %4, align 8
  store %struct.srpt_send_ioctx* %62, %struct.srpt_send_ioctx** %2, align 8
  br label %63

63:                                               ; preds = %20, %19
  %64 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %2, align 8
  ret %struct.srpt_send_ioctx* %64
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sbitmap_queue_get(i32*, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
