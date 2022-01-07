; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_task_rdma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_task_rdma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iser_task = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__*, i64*, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

@ISER_TASK_STATUS_INIT = common dso_local global i32 0, align 4
@ISER_DIR_IN = common dso_local global i64 0, align 8
@ISER_DIR_OUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_task_rdma_init(%struct.iscsi_iser_task* %0) #0 {
  %2 = alloca %struct.iscsi_iser_task*, align 8
  store %struct.iscsi_iser_task* %0, %struct.iscsi_iser_task** %2, align 8
  %3 = load i32, i32* @ISER_TASK_STATUS_INIT, align 4
  %4 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %4, i32 0, i32 4
  store i32 %3, i32* %5, align 8
  %6 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %6, i32 0, i32 3
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* @ISER_DIR_IN, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  store i64 0, i64* %10, align 8
  %11 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %12 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %11, i32 0, i32 3
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @ISER_DIR_OUT, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  store i64 0, i64* %15, align 8
  %16 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %17 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i64, i64* @ISER_DIR_IN, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %23 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i64, i64* @ISER_DIR_OUT, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %29 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* @ISER_DIR_IN, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %35 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i64, i64* @ISER_DIR_OUT, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %41 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* @ISER_DIR_IN, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %47 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i64, i64* @ISER_DIR_OUT, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %53 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @ISER_DIR_IN, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = call i32 @memset(i32* %56, i32 0, i32 4)
  %58 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %59 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @ISER_DIR_OUT, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = call i32 @memset(i32* %62, i32 0, i32 4)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
