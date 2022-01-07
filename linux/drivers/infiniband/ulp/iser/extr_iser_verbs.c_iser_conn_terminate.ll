; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_conn_terminate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_conn_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i64, i32, %struct.ib_conn }
%struct.ib_conn = type { i32, i64 }

@ISER_CONN_UP = common dso_local global i32 0, align 4
@ISER_CONN_TERMINATING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"iser_conn %p state %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to disconnect, conn: 0x%p err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_conn_terminate(%struct.iser_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca %struct.ib_conn*, align 8
  %5 = alloca i32, align 4
  store %struct.iser_conn* %0, %struct.iser_conn** %3, align 8
  %6 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %7 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %6, i32 0, i32 2
  store %struct.ib_conn* %7, %struct.ib_conn** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %9 = load i32, i32* @ISER_CONN_UP, align 4
  %10 = load i32, i32* @ISER_CONN_TERMINATING, align 4
  %11 = call i32 @iser_conn_state_comp_exch(%struct.iser_conn* %8, i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %16 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %17 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @iser_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %15, i32 %18)
  %20 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %21 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %26 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @iscsi_suspend_queue(i64 %27)
  br label %29

29:                                               ; preds = %24, %14
  %30 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %31 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %36 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @rdma_disconnect(i64 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @iser_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.iser_conn* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %47 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ib_drain_sq(i32 %48)
  br label %50

50:                                               ; preds = %45, %29
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @iser_conn_state_comp_exch(%struct.iser_conn*, i32, i32) #1

declare dso_local i32 @iser_info(i8*, %struct.iser_conn*, i32) #1

declare dso_local i32 @iscsi_suspend_queue(i64) #1

declare dso_local i32 @rdma_disconnect(i64) #1

declare dso_local i32 @iser_err(i8*, %struct.iser_conn*, i32) #1

declare dso_local i32 @ib_drain_sq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
