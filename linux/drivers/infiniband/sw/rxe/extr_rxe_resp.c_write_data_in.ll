; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_write_data_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_write_data_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rxe_pkt_info = type { i32 }

@RESPST_NONE = common dso_local global i32 0, align 4
@to_mem_obj = common dso_local global i32 0, align 4
@RESPST_ERR_RKEY_VIOLATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*)* @write_data_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_data_in(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1) #0 {
  %3 = alloca %struct.rxe_qp*, align 8
  %4 = alloca %struct.rxe_pkt_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %3, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %4, align 8
  %8 = load i32, i32* @RESPST_NONE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %10 = call i32 @payload_size(%struct.rxe_pkt_info* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %12 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %16 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %20 = call i32 @payload_addr(%struct.rxe_pkt_info* %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @to_mem_obj, align 4
  %23 = call i32 @rxe_mem_copy(i32 %14, i32 %18, i32 %20, i32 %21, i32 %22, i32* null)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @RESPST_ERR_RKEY_VIOLATION, align 4
  store i32 %27, i32* %5, align 4
  br label %41

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %31 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %29
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %37 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, %35
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %28, %26
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @payload_size(%struct.rxe_pkt_info*) #1

declare dso_local i32 @rxe_mem_copy(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @payload_addr(%struct.rxe_pkt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
