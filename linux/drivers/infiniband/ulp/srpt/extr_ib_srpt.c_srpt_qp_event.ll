; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_qp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_qp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_event = type { i32 }
%struct.srpt_rdma_ch = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"QP event %d on ch=%p sess_name=%s state=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s-%d, state %s: received Last WQE event.\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"received unrecognized IB QP event %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_event*, %struct.srpt_rdma_ch*)* @srpt_qp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srpt_qp_event(%struct.ib_event* %0, %struct.srpt_rdma_ch* %1) #0 {
  %3 = alloca %struct.ib_event*, align 8
  %4 = alloca %struct.srpt_rdma_ch*, align 8
  store %struct.ib_event* %0, %struct.ib_event** %3, align 8
  store %struct.srpt_rdma_ch* %1, %struct.srpt_rdma_ch** %4, align 8
  %5 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %6 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %9 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %10 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %13 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, i32, %struct.srpt_rdma_ch*, i32, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %7, %struct.srpt_rdma_ch* %8, i32 %11, i32 %14)
  %16 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %17 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %59 [
    i32 129, label %19
    i32 128, label %43
  ]

19:                                               ; preds = %2
  %20 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %21 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %26 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %30 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rdma_notify(i32 %28, i32 %31)
  br label %42

33:                                               ; preds = %19
  %34 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %35 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %39 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ib_cm_notify(i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %33, %24
  br label %64

43:                                               ; preds = %2
  %44 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %45 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %48 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to %struct.srpt_rdma_ch*
  %54 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %55 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @get_ch_state_name(i32 %56)
  %58 = call i32 (i8*, i32, %struct.srpt_rdma_ch*, i32, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %46, %struct.srpt_rdma_ch* %53, i32 %57)
  br label %64

59:                                               ; preds = %2
  %60 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %61 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %43, %42
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, %struct.srpt_rdma_ch*, i32, ...) #1

declare dso_local i32 @rdma_notify(i32, i32) #1

declare dso_local i32 @ib_cm_notify(i32, i32) #1

declare dso_local i32 @get_ch_state_name(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
