; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_sdma.c_hfi1_vnic_sdma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_sdma.c_hfi1_vnic_sdma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_vnic_vport_info = type { i32, %struct.TYPE_4__*, %struct.hfi1_vnic_sdma* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.hfi1_vnic_sdma = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__*, i32, %struct.hfi1_vnic_vport_info*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.iowait_work = type { i32 }

@hfi1_vnic_sdma_sleep = common dso_local global i32 0, align 4
@hfi1_vnic_sdma_wakeup = common dso_local global i32 0, align 4
@HFI1_VNIC_SDMA_Q_ACTIVE = common dso_local global i32 0, align 4
@HFI1_VNIC_SDMA_DESC_WTRMRK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_vnic_sdma_init(%struct.hfi1_vnic_vport_info* %0) #0 {
  %2 = alloca %struct.hfi1_vnic_vport_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_vnic_sdma*, align 8
  %5 = alloca %struct.iowait_work*, align 8
  store %struct.hfi1_vnic_vport_info* %0, %struct.hfi1_vnic_vport_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %74, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %9 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %77

12:                                               ; preds = %6
  %13 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %14 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %13, i32 0, i32 2
  %15 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %15, i64 %17
  store %struct.hfi1_vnic_sdma* %18, %struct.hfi1_vnic_sdma** %4, align 8
  %19 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %4, align 8
  %20 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %19, i32 0, i32 2
  %21 = load i32, i32* @hfi1_vnic_sdma_sleep, align 4
  %22 = load i32, i32* @hfi1_vnic_sdma_wakeup, align 4
  %23 = call i32 @iowait_init(i32* %20, i32 0, i32* null, i32* null, i32 %21, i32 %22, i32* null, i32* null)
  %24 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %25 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %4, align 8
  %33 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %32, i32 0, i32 3
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %33, align 8
  %34 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %35 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %4, align 8
  %38 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %37, i32 0, i32 6
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %38, align 8
  %39 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %40 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %4, align 8
  %41 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %40, i32 0, i32 5
  store %struct.hfi1_vnic_vport_info* %39, %struct.hfi1_vnic_vport_info** %41, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %4, align 8
  %44 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @HFI1_VNIC_SDMA_Q_ACTIVE, align 4
  %46 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %4, align 8
  %47 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %4, align 8
  %49 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %48, i32 0, i32 3
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HFI1_VNIC_SDMA_DESC_WTRMRK, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %12
  %56 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %4, align 8
  %57 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load i64, i64* @HFI1_VNIC_SDMA_DESC_WTRMRK, align 8
  %61 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %4, align 8
  %62 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i64 %60, i64* %63, align 8
  %64 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %4, align 8
  %65 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %64, i32 0, i32 2
  %66 = call %struct.iowait_work* @iowait_get_ib_work(i32* %65)
  store %struct.iowait_work* %66, %struct.iowait_work** %5, align 8
  %67 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %4, align 8
  %68 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.iowait_work*, %struct.iowait_work** %5, align 8
  %71 = getelementptr inbounds %struct.iowait_work, %struct.iowait_work* %70, i32 0, i32 0
  %72 = call i32 @list_add_tail(i32* %69, i32* %71)
  br label %73

73:                                               ; preds = %55, %12
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %6

77:                                               ; preds = %6
  ret void
}

declare dso_local i32 @iowait_init(i32*, i32, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.iowait_work* @iowait_get_ib_work(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
