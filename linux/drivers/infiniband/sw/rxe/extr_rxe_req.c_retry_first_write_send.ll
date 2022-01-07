; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_retry_first_write_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_retry_first_write_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rxe_send_wqe = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@IB_SEND_INLINE = common dso_local global i32 0, align 4
@WR_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_qp*, %struct.rxe_send_wqe*, i32, i32)* @retry_first_write_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retry_first_write_send(%struct.rxe_qp* %0, %struct.rxe_send_wqe* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rxe_qp*, align 8
  %6 = alloca %struct.rxe_send_wqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %5, align 8
  store %struct.rxe_send_wqe* %1, %struct.rxe_send_wqe** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %84, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %87

15:                                               ; preds = %11
  %16 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %17 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %21 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %26 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %33

28:                                               ; preds = %15
  %29 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %30 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i32 [ %27, %24 ], [ %32, %28 ]
  store i32 %34, i32* %10, align 4
  %35 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %36 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %37 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %38 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @next_opcode(%struct.rxe_qp* %35, %struct.rxe_send_wqe* %36, i32 %40)
  %42 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %43 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %46 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IB_SEND_INLINE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %33
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %55 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, %53
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %61 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %59
  store i32 %64, i32* %62, align 4
  br label %70

65:                                               ; preds = %33
  %66 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %67 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %66, i32 0, i32 1
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @advance_dma_data(%struct.TYPE_6__* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %52
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @WR_WRITE_MASK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %77 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %80 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %75, %70
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %11

87:                                               ; preds = %11
  ret void
}

declare dso_local i32 @next_opcode(%struct.rxe_qp*, %struct.rxe_send_wqe*, i32) #1

declare dso_local i32 @advance_dma_data(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
