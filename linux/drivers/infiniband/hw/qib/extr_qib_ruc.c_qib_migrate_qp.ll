; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_migrate_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_migrate_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.ib_event.0 = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@IB_MIG_MIGRATED = common dso_local global i32 0, align 4
@IB_EVENT_PATH_MIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_migrate_qp(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.ib_event.0, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %4 = load i32, i32* @IB_MIG_MIGRATED, align 4
  %5 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %6 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %5, i32 0, i32 6
  store i32 %4, i32* %6, align 4
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %8 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %11 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %13 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %12, i32 0, i32 3
  %14 = call i32 @rdma_ah_get_port_num(i32* %13)
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %16 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %18 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %21 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %23 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %3, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %28 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %3, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %30, align 8
  %31 = load i32, i32* @IB_EVENT_PATH_MIG, align 4
  %32 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %3, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %34 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %35, align 8
  %37 = bitcast %struct.ib_event.0* %3 to %struct.ib_event*
  %38 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %39 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %36(%struct.ib_event* %37, i32 %41)
  ret void
}

declare dso_local i32 @rdma_ah_get_port_num(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
