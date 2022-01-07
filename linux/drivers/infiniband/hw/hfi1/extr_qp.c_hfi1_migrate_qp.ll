; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_migrate_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_migrate_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, %struct.hfi1_qp_priv* }
%struct.TYPE_4__ = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.hfi1_qp_priv = type { i32, i32 }
%struct.ib_event.0 = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@IB_MIG_MIGRATED = common dso_local global i32 0, align 4
@HFI1_S_AHG_CLEAR = common dso_local global i32 0, align 4
@IB_EVENT_PATH_MIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_migrate_qp(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.hfi1_qp_priv*, align 8
  %4 = alloca %struct.ib_event.0, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %5 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %6 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %5, i32 0, i32 8
  %7 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %6, align 8
  store %struct.hfi1_qp_priv* %7, %struct.hfi1_qp_priv** %3, align 8
  %8 = load i32, i32* @IB_MIG_MIGRATED, align 4
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %10 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 8
  %11 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %12 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %15 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %17 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %16, i32 0, i32 5
  %18 = call i32 @rdma_ah_get_port_num(i32* %17)
  %19 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %20 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %22 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %25 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @HFI1_S_AHG_CLEAR, align 4
  %27 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %28 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %32 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %36 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %35, i32 0, i32 1
  %37 = call i32 @ah_to_sc(i32 %34, i32* %36)
  %38 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %39 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %41 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %42 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @qp_to_sdma_engine(%struct.rvt_qp* %40, i32 %43)
  %45 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %46 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %48 = call i32 @qp_set_16b(%struct.rvt_qp* %47)
  %49 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %50 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %4, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  %54 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %55 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %4, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %57, align 8
  %58 = load i32, i32* @IB_EVENT_PATH_MIG, align 4
  %59 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %4, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %61 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %62, align 8
  %64 = bitcast %struct.ib_event.0* %4 to %struct.ib_event*
  %65 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %66 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %63(%struct.ib_event* %64, i32 %68)
  ret void
}

declare dso_local i32 @rdma_ah_get_port_num(i32*) #1

declare dso_local i32 @ah_to_sc(i32, i32*) #1

declare dso_local i32 @qp_to_sdma_engine(%struct.rvt_qp*, i32) #1

declare dso_local i32 @qp_set_16b(%struct.rvt_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
