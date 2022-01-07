; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_free_ring_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_free_ring_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_queue = type { %struct.TYPE_5__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }

@SEC_Q_DB_SIZE = common dso_local global i32 0, align 4
@SEC_Q_CQ_SIZE = common dso_local global i32 0, align 4
@SEC_Q_CMD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sec_queue*)* @sec_queue_free_ring_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_queue_free_ring_pages(%struct.sec_queue* %0) #0 {
  %2 = alloca %struct.sec_queue*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.sec_queue* %0, %struct.sec_queue** %2, align 8
  %4 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %5 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %4, i32 0, i32 3
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load i32, i32* @SEC_Q_DB_SIZE, align 4
  %11 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %12 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %16 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dma_free_coherent(%struct.device* %9, i32 %10, i32 %14, i32 %18)
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load i32, i32* @SEC_Q_CQ_SIZE, align 4
  %22 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %23 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %27 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dma_free_coherent(%struct.device* %20, i32 %21, i32 %25, i32 %29)
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = load i32, i32* @SEC_Q_CMD_SIZE, align 4
  %33 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %34 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %38 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dma_free_coherent(%struct.device* %31, i32 %32, i32 %36, i32 %40)
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
