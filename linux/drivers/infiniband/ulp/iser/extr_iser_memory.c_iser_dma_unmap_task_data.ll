; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_dma_unmap_task_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_dma_unmap_task_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iser_task = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.iser_data_buf = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_dma_unmap_task_data(%struct.iscsi_iser_task* %0, %struct.iser_data_buf* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_iser_task*, align 8
  %5 = alloca %struct.iser_data_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  store %struct.iscsi_iser_task* %0, %struct.iscsi_iser_task** %4, align 8
  store %struct.iser_data_buf* %1, %struct.iser_data_buf** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  store %struct.ib_device* %15, %struct.ib_device** %7, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %17 = load %struct.iser_data_buf*, %struct.iser_data_buf** %5, align 8
  %18 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iser_data_buf*, %struct.iser_data_buf** %5, align 8
  %21 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ib_dma_unmap_sg(%struct.ib_device* %16, i32 %19, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @ib_dma_unmap_sg(%struct.ib_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
