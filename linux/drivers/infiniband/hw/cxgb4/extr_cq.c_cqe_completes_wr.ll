; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_cqe_completes_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_cqe_completes_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_cqe = type { i32 }
%struct.t4_wq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unexpected DRAIN CQE qp id %u!\0A\00", align 1
@FW_RI_TERMINATE = common dso_local global i64 0, align 8
@FW_RI_RDMA_WRITE = common dso_local global i64 0, align 8
@FW_RI_READ_RESP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_cqe*, %struct.t4_wq*)* @cqe_completes_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqe_completes_wr(%struct.t4_cqe* %0, %struct.t4_wq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.t4_cqe*, align 8
  %5 = alloca %struct.t4_wq*, align 8
  store %struct.t4_cqe* %0, %struct.t4_cqe** %4, align 8
  store %struct.t4_wq* %1, %struct.t4_wq** %5, align 8
  %6 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %7 = call i64 @DRAIN_CQE(%struct.t4_cqe* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %11 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 0, i32* %3, align 4
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %17 = call i64 @CQE_OPCODE(%struct.t4_cqe* %16)
  %18 = load i64, i64* @FW_RI_TERMINATE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %55

21:                                               ; preds = %15
  %22 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %23 = call i64 @CQE_OPCODE(%struct.t4_cqe* %22)
  %24 = load i64, i64* @FW_RI_RDMA_WRITE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %28 = call i64 @RQ_TYPE(%struct.t4_cqe* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %55

31:                                               ; preds = %26, %21
  %32 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %33 = call i64 @CQE_OPCODE(%struct.t4_cqe* %32)
  %34 = load i64, i64* @FW_RI_READ_RESP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %38 = call i64 @SQ_TYPE(%struct.t4_cqe* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %55

41:                                               ; preds = %36, %31
  %42 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %43 = call i64 @CQE_SEND_OPCODE(%struct.t4_cqe* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %47 = call i64 @RQ_TYPE(%struct.t4_cqe* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %51 = call i64 @t4_rq_empty(%struct.t4_wq* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %55

54:                                               ; preds = %49, %45, %41
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %53, %40, %30, %20, %9
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @DRAIN_CQE(%struct.t4_cqe*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i64 @CQE_OPCODE(%struct.t4_cqe*) #1

declare dso_local i64 @RQ_TYPE(%struct.t4_cqe*) #1

declare dso_local i64 @SQ_TYPE(%struct.t4_cqe*) #1

declare dso_local i64 @CQE_SEND_OPCODE(%struct.t4_cqe*) #1

declare dso_local i64 @t4_rq_empty(%struct.t4_wq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
