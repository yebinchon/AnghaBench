; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_unreg_mem_fastreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_unreg_mem_fastreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iser_task = type { %struct.TYPE_4__*, %struct.iser_mem_reg* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.iser_device* }
%struct.iser_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32*)* }
%struct.iser_mem_reg = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_unreg_mem_fastreg(%struct.iscsi_iser_task* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_iser_task*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iser_device*, align 8
  %6 = alloca %struct.iser_mem_reg*, align 8
  store %struct.iscsi_iser_task* %0, %struct.iscsi_iser_task** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.iser_device*, %struct.iser_device** %11, align 8
  store %struct.iser_device* %12, %struct.iser_device** %5, align 8
  %13 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %3, align 8
  %14 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %13, i32 0, i32 1
  %15 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %15, i64 %17
  store %struct.iser_mem_reg* %18, %struct.iser_mem_reg** %6, align 8
  %19 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %20 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %40

24:                                               ; preds = %2
  %25 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %26 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_6__*, i32*)*, i32 (%struct.TYPE_6__*, i32*)** %28, align 8
  %30 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %3, align 8
  %31 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %35 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 %29(%struct.TYPE_6__* %33, i32* %36)
  %38 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %39 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %24, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
