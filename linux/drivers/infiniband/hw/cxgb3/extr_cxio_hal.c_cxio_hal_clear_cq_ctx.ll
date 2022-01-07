; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cxio_hal_clear_cq_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cxio_hal_clear_cq_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxio_rdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, %struct.rdma_cq_setup*)* }
%struct.rdma_cq_setup = type { i64, i64, i64, i64, i64, i32 }

@RDMA_CQ_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxio_rdev*, i32)* @cxio_hal_clear_cq_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxio_hal_clear_cq_ctx(%struct.cxio_rdev* %0, i32 %1) #0 {
  %3 = alloca %struct.cxio_rdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_cq_setup, align 8
  store %struct.cxio_rdev* %0, %struct.cxio_rdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %5, i32 0, i32 5
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %5, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %5, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %5, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %5, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %5, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.cxio_rdev*, %struct.cxio_rdev** %3, align 8
  %14 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_2__*, i32, %struct.rdma_cq_setup*)*, i32 (%struct.TYPE_2__*, i32, %struct.rdma_cq_setup*)** %16, align 8
  %18 = load %struct.cxio_rdev*, %struct.cxio_rdev** %3, align 8
  %19 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* @RDMA_CQ_SETUP, align 4
  %22 = call i32 %17(%struct.TYPE_2__* %20, i32 %21, %struct.rdma_cq_setup* %5)
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
