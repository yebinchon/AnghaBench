; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_verbs_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_verbs_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ib_header = type { i32 }
%struct.rvt_sge_state = type { i32 }
%struct.qib_devdata = type { i32 }

@IB_QPT_SMI = common dso_local global i64 0, align 8
@QIB_HAS_SEND_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_verbs_send(%struct.rvt_qp* %0, %struct.ib_header* %1, i32 %2, %struct.rvt_sge_state* %3, i32 %4) #0 {
  %6 = alloca %struct.rvt_qp*, align 8
  %7 = alloca %struct.ib_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rvt_sge_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qib_devdata*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %6, align 8
  store %struct.ib_header* %1, %struct.ib_header** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.rvt_sge_state* %3, %struct.rvt_sge_state** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %16 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.qib_devdata* @dd_from_ibdev(i32 %18)
  store %struct.qib_devdata* %19, %struct.qib_devdata** %11, align 8
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, 3
  %22 = ashr i32 %21, 2
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %14, align 4
  %25 = add nsw i32 %23, %24
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %12, align 4
  %27 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %28 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IB_QPT_SMI, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %5
  %34 = load %struct.qib_devdata*, %struct.qib_devdata** %11, align 8
  %35 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @QIB_HAS_SEND_DMA, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %33, %5
  %41 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %42 = load %struct.ib_header*, %struct.ib_header** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @qib_verbs_send_pio(%struct.rvt_qp* %41, %struct.ib_header* %42, i32 %43, %struct.rvt_sge_state* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %13, align 4
  br label %58

49:                                               ; preds = %33
  %50 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %51 = load %struct.ib_header*, %struct.ib_header** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @qib_verbs_send_dma(%struct.rvt_qp* %50, %struct.ib_header* %51, i32 %52, %struct.rvt_sge_state* %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %49, %40
  %59 = load i32, i32* %13, align 4
  ret i32 %59
}

declare dso_local %struct.qib_devdata* @dd_from_ibdev(i32) #1

declare dso_local i32 @qib_verbs_send_pio(%struct.rvt_qp*, %struct.ib_header*, i32, %struct.rvt_sge_state*, i32, i32, i32) #1

declare dso_local i32 @qib_verbs_send_dma(%struct.rvt_qp*, %struct.ib_header*, i32, %struct.rvt_sge_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
