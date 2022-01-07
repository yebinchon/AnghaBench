; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_conn_terminate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_conn_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { i64, i32 }

@ISER_CONN_TERMINATING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Terminating conn %p state %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed rdma_disconnect isert_conn %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isert_conn*)* @isert_conn_terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_conn_terminate(%struct.isert_conn* %0) #0 {
  %2 = alloca %struct.isert_conn*, align 8
  %3 = alloca i32, align 4
  store %struct.isert_conn* %0, %struct.isert_conn** %2, align 8
  %4 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %5 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ISER_CONN_TERMINATING, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %12 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %13 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @isert_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.isert_conn* %11, i64 %14)
  %16 = load i64, i64* @ISER_CONN_TERMINATING, align 8
  %17 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %18 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %20 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @rdma_disconnect(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %10
  %26 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %27 = call i32 @isert_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.isert_conn* %26)
  br label %28

28:                                               ; preds = %9, %25, %10
  ret void
}

declare dso_local i32 @isert_info(i8*, %struct.isert_conn*, i64) #1

declare dso_local i32 @rdma_disconnect(i32) #1

declare dso_local i32 @isert_warn(i8*, %struct.isert_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
