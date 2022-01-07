; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_qp_to_sdma_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_qp_to_sdma_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32 }
%struct.rvt_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hfi1_devdata = type { i32, i32 }

@HFI1_HAS_SEND_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sdma_engine* @qp_to_sdma_engine(%struct.rvt_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_devdata*, align 8
  %7 = alloca %struct.sdma_engine*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %9 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.hfi1_devdata* @dd_from_ibdev(i32 %11)
  store %struct.hfi1_devdata* %12, %struct.hfi1_devdata** %6, align 8
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %14 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HFI1_HAS_SEND_DMA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.sdma_engine* null, %struct.sdma_engine** %3, align 8
  br label %40

20:                                               ; preds = %2
  %21 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %22 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %26 [
    i32 128, label %25
  ]

25:                                               ; preds = %20
  store %struct.sdma_engine* null, %struct.sdma_engine** %3, align 8
  br label %40

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %29 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %30 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %34 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %32, %35
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.sdma_engine* @sdma_select_engine_sc(%struct.hfi1_devdata* %28, i32 %36, i32 %37)
  store %struct.sdma_engine* %38, %struct.sdma_engine** %7, align 8
  %39 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  store %struct.sdma_engine* %39, %struct.sdma_engine** %3, align 8
  br label %40

40:                                               ; preds = %27, %25, %19
  %41 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  ret %struct.sdma_engine* %41
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(i32) #1

declare dso_local %struct.sdma_engine* @sdma_select_engine_sc(%struct.hfi1_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
