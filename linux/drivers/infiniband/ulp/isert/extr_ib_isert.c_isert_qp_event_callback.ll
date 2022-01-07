; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_qp_event_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_qp_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_event = type { i32 }
%struct.isert_conn = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s (%d): conn %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Reached TX IB_EVENT_QP_LAST_WQE_REACHED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_event*, i8*)* @isert_qp_event_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_qp_event_callback(%struct.ib_event* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.isert_conn*, align 8
  store %struct.ib_event* %0, %struct.ib_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.isert_conn*
  store %struct.isert_conn* %7, %struct.isert_conn** %5, align 8
  %8 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %9 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ib_event_msg(i32 %10)
  %12 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %13 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %16 = call i32 @isert_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, %struct.isert_conn* %15)
  %17 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %18 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %27 [
    i32 129, label %20
    i32 128, label %25
  ]

20:                                               ; preds = %2
  %21 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %22 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rdma_notify(i32 %23, i32 129)
  br label %28

25:                                               ; preds = %2
  %26 = call i32 @isert_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %25, %20
  ret void
}

declare dso_local i32 @isert_err(i8*, i32, i32, %struct.isert_conn*) #1

declare dso_local i32 @ib_event_msg(i32) #1

declare dso_local i32 @rdma_notify(i32, i32) #1

declare dso_local i32 @isert_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
