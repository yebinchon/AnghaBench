; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_ctrl_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_ctrl_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i64, i32 }
%struct.iser_tx_desc = type { i32 }
%struct.iscsi_task = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"control\00", align 1
@RESERVED_ITT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_ctrl_comp(%struct.ib_cq* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.iser_tx_desc*, align 8
  %6 = alloca %struct.iscsi_task*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %7 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %8 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.iser_tx_desc* @iser_tx(i32 %9)
  store %struct.iser_tx_desc* %10, %struct.iser_tx_desc** %5, align 8
  %11 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %12 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IB_WC_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %21 = call i32 @iser_err_comp(%struct.ib_wc* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %24 = bitcast %struct.iser_tx_desc* %23 to i8*
  %25 = getelementptr i8, i8* %24, i64 -8
  %26 = bitcast i8* %25 to %struct.iscsi_task*
  store %struct.iscsi_task* %26, %struct.iscsi_task** %6, align 8
  %27 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %28 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RESERVED_ITT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %36 = call i32 @iscsi_put_task(%struct.iscsi_task* %35)
  br label %37

37:                                               ; preds = %19, %34, %22
  ret void
}

declare dso_local %struct.iser_tx_desc* @iser_tx(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iser_err_comp(%struct.ib_wc*, i8*) #1

declare dso_local i32 @iscsi_put_task(%struct.iscsi_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
